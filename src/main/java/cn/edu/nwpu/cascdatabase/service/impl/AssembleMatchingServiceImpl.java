package cn.edu.nwpu.cascdatabase.service.impl;

import cn.edu.nwpu.cascdatabase.domain.AssembleMatching;
import cn.edu.nwpu.cascdatabase.repository.AssembleMatchingRepository;
import cn.edu.nwpu.cascdatabase.service.AssembleMatchingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName AssembleMatchingServiceImpl
 * @Author: wkx
 * @Date: 2019/7/3 12:42
 * @Version: v1.0
 * @Description: 系统中组合件配套表业务层实现类
 */
@Service
public class AssembleMatchingServiceImpl implements AssembleMatchingService {

    @Autowired
    private AssembleMatchingRepository assembleMatchingRepository;

    @Override
    public List<AssembleMatching> findAllAssembleMatching() {
        return assembleMatchingRepository.findAll();
    }

    @Override
    public boolean deleteAssembleMatchingByPkId(Integer pkId) {
        try{
            assembleMatchingRepository.deleteById(pkId);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean saveOrUpdateAssembleMatching(AssembleMatching assembleMatching) {
        try{
            assembleMatchingRepository.save(assembleMatching);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public Integer countAssembleByName(String name) {
        return assembleMatchingRepository.countByName(name);
    }
}
