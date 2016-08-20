/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author r4ad
 */
public class variables_offer {
    
    private Object arr[][];
    private String visa_num, user_id, offer_id;

    /**
     * @return the arr
     */
    public Object[][] getArr() {
        return arr;
    }

    /**
     * @param arr the arr to set
     */
    public void setArr(Object[][] arr) {
        this.arr = arr;
    }

    /**
     * @return the visa_num
     */
    public String getVisa_num() {
        return visa_num;
    }

    /**
     * @param visa_num the visa_num to set
     */
    public void setVisa_num(String visa_num) {
        this.visa_num = visa_num;
    }

    /**
     * @return the user_id
     */
    public String getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    /**
     * @return the offer_id
     */
    public String getOffer_id() {
        return offer_id;
    }

    /**
     * @param offer_id the offer_id to set
     */
    public void setOffer_id(String offer_id) {
        this.offer_id = offer_id;
    }
    
}
