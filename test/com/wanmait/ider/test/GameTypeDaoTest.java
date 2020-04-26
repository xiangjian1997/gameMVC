package com.wanmait.ider.test;

import com.wanmait.ider.dao.impl.GameTypeDao;
import com.wanmait.ider.pojo.GameType;
import org.junit.Test;

import java.util.List;

public class GameTypeDaoTest
{
    @Test
    public void getData()
    {
        List datas= GameTypeDao.getGameTypeDao().getRankings();
        datas.forEach(data -> System.out.println(data));
    }
    @Test
    public void testFindAll()
    {

    }

}
