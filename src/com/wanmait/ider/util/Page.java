package com.wanmait.ider.util;

import java.util.ArrayList;
import java.util.List;

public class Page<T> {
    /**
     * 总页数
     **/
    private Integer pageCount;
    /**
     * 当前页码
     **/
    private Integer present;
    /**
     * 总数
     **/
    private Integer sum;
    /**
     * 每页显示的条数
     **/
    private Integer size;
    /**
     * 显示的页
     */
    private List<Integer> pageCounts = new ArrayList<>();

    /**
     * 最多显示几页
     */
    private Integer count;

    /*注意事项，每次更新  sum（总数），显示的页数，每页显示的条数，当前页码都需要更新数据*/

    /*构造函数start*/

    public Page() {
        /*默认值*/
        /*设置当前页码*/
        this.present = 1;
        /*设置总数*/
        this.sum = 0;
        /*设置每页显示的条数*/
        this.size = 10;
        /*最多显示多少页码*/
        this.count = 9;
    }

    public Page(Integer present, Integer sum, Integer size, Integer count) {

        /*设置当前页码*/
        if (null == present || present <= 0) {
            this.present = 1;
        } else if (present > 0 && present <= pageCount) {
            this.present = present;
        } else if (present > pageCount) {
            this.present = pageCount;
        }

        /*设置总数*/
        if (null != sum) {
            this.sum = sum;
        } else {
            this.sum = 0;
        }

        /*设置每页显示的条数*/
        if (null != size && size > 0) {
            this.size = size;
        } else {
            this.size = 10;
        }

        /*设置显示多少页码（页面显示的页码数量）*/
        if (null != count) {
            this.count = count;
        } else {
            this.count = 9;
        }
    }


    /*构造函数end*/


    /*设置属性，获得属性的方法start*/

    public Integer getPresent() {
        return present;
    }

    public void setPresent(Integer present) {
        if (null != present) {
            this.present = present;
        } else {
            this.present = 1;
        }
    }


    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        if (null != size && size > 0) {
            this.size = size;
            this.update();
        }
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public void setSum(Integer sum) {
        if (null != sum && sum > 0) {
            this.sum = sum;
            this.update();
        }
    }

    public Integer getSum() {
        return this.sum;
    }

    /*获取当前页面的数据*/
    public List<T> getThisData(List<T> objects) {
        List<T> objects1 = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            Integer a = (present - 1) * size + i;
            if (a < objects.size()) {
                objects1.add(objects.get(a));
            } else {
                break;
            }
        }
        return objects1;
    }
    /*获取数据，设置数据end*/

    @Override
    public String toString() {
        return "Page{" +
                "pageCount=" + pageCount +
                ", present=" + present +
                ", sum=" + sum +
                ", size=" + size +
                ", pageCounts=" + pageCounts +
                ", count=" + count +
                '}';
    }


    /*需要更新的数据的方法整合*/
    private void update() {
        System.out.println("start");
        this.setPageCount();
        this.getPageCounts();
    }

    /*显示的页码数量计算相关start*/
    /*显示的页码*/
    public List<Integer> getPageCounts() {
        if (pageCount < count) {
            /*当总页数小于页面显示的页码数量*/
            this.calculate(1, pageCount);
        } else if (pageCount >= count) {/*当总页数大于等于显示的页码数量*/
            /*假设显示的页码数量为1，在Java的int中1/2为0，即在当前页上下加减0。。显示的页码数量为2，当前页为1，则显示1，2；当前页为2，则显示2，3；当最后一页为时，则显示x-1，x*/
            /*当前页为a，显示的页码数量为b;由此可知是从a+b/2开始往下循环，前提没有超过最大页，没有到负数*/
            if (present <= (count / 2)) {/*当前页码小于等于显示的页码数量的一半时，从1开始循环*/
                this.calculate(1, pageCount);
            } else if ((present + count / 2) >= pageCount) {/*当当前页码+显示页码的一半大于等于总页码的情况*/
                this.calculate((pageCount - count), count);
            }

        }
        return pageCounts;
    }

    /*添加页码的方法*/
    private void calculate(Integer start, Integer time) {/*start是从什么数开始，time循环的次数*/
        if (pageCounts.size() > 0) {
            pageCounts = null;
            pageCounts = new ArrayList<>();
        }
        for (int i = 0; i < time; i++) {

            pageCounts.add(i + start);
        }

    }

    /*显示的页码数量计算相关end*/
    /*1.计算总页数*/
    private void setPageCount() {
        System.out.println("sum:" + sum + ",size:" + size);
        this.pageCount = (sum + size - 1) / size;
        System.out.println("pageCount:" + pageCount);
    }

    public Integer getPageCount() {
        return this.pageCount = (sum + size - 1) / size;
    }
}
