package cn.edu.nwpu.cascdatabase.controller;

import cn.edu.nwpu.cascdatabase.domain.AssembleMatching;
import cn.edu.nwpu.cascdatabase.dto.AssembleMatchingDTO;
import cn.edu.nwpu.cascdatabase.service.AssembleMatchingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @ClassName AssembleMatchingController
 * @Author: wkx
 * @Date: 2019/7/3 12:34
 * @Version: v1.0
 * @Description: 系统中组合件配套表控制器
 */
@RestController
public class AssembleMatchingController {
    @Autowired
    private AssembleMatchingService assembleMatchingService;

    @PostMapping("/findAllAssemble")
    public List<AssembleMatchingDTO> findAllAssemble(){
        List<AssembleMatchingDTO> amDTOList =
                assembleMatchingService.findAllAssembleMatching().stream()
                .map(e -> new AssembleMatchingDTO(e.getPkId(), e.getName(), e.getAlias(),
                        e.getProductCode(), e.getRemark(), e.getLink())).collect(Collectors.toList());
        for (AssembleMatchingDTO assembleMatchingDTO : amDTOList) {
            assembleMatchingDTO.setAmount(assembleMatchingService.countAssembleByName(assembleMatchingDTO.getName()));
        }
        return amDTOList;
    }

    @PostMapping("/saveOrUpdateAssemble")
    public Map<String, Object> saveOrUpdateAssemble(AssembleMatchingDTO assembleMatchingDTO){
        //将DTO对象转换为实体对象
        AssembleMatching assembleMatching = new AssembleMatching();
        if (assembleMatchingDTO.getPkId() != null){
            assembleMatching.setPkId(assembleMatchingDTO.getPkId());
        }
        assembleMatching.setName(assembleMatchingDTO.getName());
        assembleMatching.setAlias(assembleMatchingDTO.getAlias());
        assembleMatching.setProductCode(assembleMatchingDTO.getProductCode());
        assembleMatching.setRemark(assembleMatchingDTO.getRemark());
        assembleMatching.setLink(assembleMatchingDTO.getLink());

        boolean success = assembleMatchingService.saveOrUpdateAssembleMatching(assembleMatching);
        Map<String, Object> result = new HashMap<>();
        result.put("success", success);
        if (!success){
            result.put("errorMsg", "修改数据失败");
        }
        return result;
    }

    @PostMapping("/deleteAssemble")
    public Map<String, Object> deleteAssemble(Integer id){
        boolean success = assembleMatchingService.deleteAssembleMatchingByPkId(id);
        Map<String, Object> result = new HashMap<>();
        result.put("success", success);
        if (!success){
            result.put("errorMsg", "删除数据失败");
        }
        return result;
    }
}
