/**
 *
 */
package com.xscj.domain;

import java.io.Serializable;

/**
 * @author xxx
 * @date
 */
public class IDNameScore implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 6439268912369237547L;
    private int stuXueHao;
    private String name;
    private double score;

    public int getStuXueHao() {
        return stuXueHao;
    }

    public void setStuXueHao(int stuXueHao) {
        this.stuXueHao = stuXueHao;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }


}
