package cn.edu.nwpu.cascdatabase.service;

import cn.edu.nwpu.cascdatabase.domain.AssembleMatching;

import java.util.List;

/**
 * @ClassName AssembleMatchingService
 * @Author: wkx
 * @Date: 2019/7/3 12:38
 * @Version: v1.0
 * @Description: 系统中组合件配套表业务层
 */
public interface AssembleMatchingService {

    /**
     *
     * @return 返回组合件配套表中所有字段
     */
    List<AssembleMatching> findAllAssembleMatching();

    /**
     *
     * @param pkId
     * @return
     */
    boolean deleteAssembleMatchingByPkId(Integer pkId);

    /**
     * 添加或修改，没有pkId则添加，有就修改
     * @param assembleMatching 组件实体类
     * @return 成功返回true
     */
    boolean saveOrUpdateAssembleMatching(AssembleMatching assembleMatching);

    /**
     * 按名称查询组件个数
     * @return
     */
    Integer countAssembleByName(String name);
}
