package cn.edu.nwpu.cascdatabase.repository;

import cn.edu.nwpu.cascdatabase.domain.SystemNode;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @ClassName SystemNodeRepository
 * @Author: wkx
 * @Date: 2019/7/12 12:19
 * @Version: v1.0
 * @Description: 系统节点实现增删改查
 */
public interface SystemNodeRepository extends JpaRepository<SystemNode, Integer> {
}
