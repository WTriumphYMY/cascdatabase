package cn.edu.nwpu.cascdatabase.service.impl;

import cn.edu.nwpu.cascdatabase.domain.ModelNode;
import cn.edu.nwpu.cascdatabase.domain.SystemNode;
import cn.edu.nwpu.cascdatabase.dto.ModelNodeDTO;
import cn.edu.nwpu.cascdatabase.dto.SystemNodeDTO;
import cn.edu.nwpu.cascdatabase.dto.TableNodeDTO;
import cn.edu.nwpu.cascdatabase.repository.SystemNodeRepository;
import cn.edu.nwpu.cascdatabase.service.TreeNodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @ClassName TreeNodeServiceImpl
 * @Author: wkx
 * @Date: 2019/7/9 10:07
 * @Version: v1.0
 * @Description: 节点服务实现类
 */
@Service
public class TreeNodeServiceImpl implements TreeNodeService {

    @Autowired
    private SystemNodeRepository systemNodeRepository;

    @Override
    public SystemNodeDTO getTree() {
        TableNodeDTO tableNodeDTO1 = new TableNodeDTO(4,"表名1", "/table", "icon-cog");
        TableNodeDTO tableNodeDTO2 = new TableNodeDTO(5,"表名2", "/table", "icon-cog");
        ModelNodeDTO modelNode1 = new ModelNodeDTO(2,"NWPU-001", "icon-cog", Arrays.asList(tableNodeDTO1, tableNodeDTO2));
        ModelNodeDTO modelNode2 = new ModelNodeDTO(3,"NWPU-002", "icon-cog", Arrays.asList(tableNodeDTO1, tableNodeDTO2));
        SystemNodeDTO systemNode = new SystemNodeDTO(1,"NWPU动力系统", "icon-cog", Arrays.asList(modelNode1,modelNode2));
        return systemNode;
    }

    @Override
    public void addSystem(SystemNode systemNode) {
        systemNodeRepository.save(systemNode);
    }
}
