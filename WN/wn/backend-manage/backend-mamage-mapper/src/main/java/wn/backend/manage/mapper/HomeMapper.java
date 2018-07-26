package wn.backend.manage.mapper;



import java.util.List;

import wn.backend.manage.pojo.Spots;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface HomeMapper {
    public List<Spots> findTop3();
    public List<Spots> findAll(Integer n);
    public List<Spots> findAll6(Integer n);
}
