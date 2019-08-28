package cn.edu.nwpu.cascdatabase.repository;

import cn.edu.nwpu.cascdatabase.domain.AssembleMatching;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 * @InterfaceName AssembleMatchingRepository
 * @Author: wkx
 * @Date: 2019/7/3 11:42
 * @Version: v1.0
 * @Description:
 */
@Repository
public interface AssembleMatchingRepository extends JpaRepository<AssembleMatching, Integer> {

    Integer countByName(String name);
}
