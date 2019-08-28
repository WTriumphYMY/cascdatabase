package cn.edu.nwpu.cascdatabase.controller;

import cn.edu.nwpu.cascdatabase.domain.SystemNode;
import cn.edu.nwpu.cascdatabase.dto.SystemNodeDTO;
import cn.edu.nwpu.cascdatabase.service.TreeNodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

/**
 * @ClassName TreeController
 * @Author: wkx
 * @Date: 2019/7/10 15:35
 * @Version: v1.0
 * @Description: 左侧树的控制器
 */
@RestController
public class TreeNodeController {

    @Autowired
    private TreeNodeService treeNodeService;

    @PostMapping("/newSystem")
    public void addNewSystem(SystemNode systemNode){

    }

    @RequestMapping("/tree")
    public List<SystemNodeDTO> getTree(){
        return Arrays.asList(treeNodeService.getTree());
    }
}
