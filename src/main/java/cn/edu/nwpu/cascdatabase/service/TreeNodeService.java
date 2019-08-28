package cn.edu.nwpu.cascdatabase.service;

import cn.edu.nwpu.cascdatabase.domain.SystemNode;
import cn.edu.nwpu.cascdatabase.dto.SystemNodeDTO;

import java.util.List;

/**
 * @InterfaceName TreeNodeService
 * @Author: wkx
 * @Date: 2019/7/9 09:55
 * @Version: v1.0
 * @Description: 树结点的业务层
 */
public interface TreeNodeService {

    /**
     * 获取所有树节点
     * @return
     */
    SystemNodeDTO getTree();

    /**
     * 添加新系统
     * @param systemNode
     */
    void addSystem(SystemNode systemNode);
}
