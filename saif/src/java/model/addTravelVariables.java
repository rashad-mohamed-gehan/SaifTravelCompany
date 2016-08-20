package model;

public class addTravelVariables {
    private String travelTitle;
    private float travelPrice;
    private String travelStartDate;
    private String travelEndDate;
    private String travelDescription;
    private String travelImage;
    private int fk_travel;
    private String place1;
    private String place2;
    private String place3;
    private String place4;
    
    public void set_travelTitle(String travelTitle){this.travelTitle=travelTitle;}
    public String get_travelTitle(){return travelTitle;}
    
    public void set_travelPrice(float travelPrice){this.travelPrice=travelPrice;}
    public float get_travelPrice(){return travelPrice;}
    
    public void set_travelStartDate(String travelStartDate){this.travelStartDate=travelStartDate;}
    public String get_travelStartDate(){return travelStartDate;}
    
    public void set_travelEndDate(String travelEndDate){this.travelEndDate=travelEndDate;}
    public String get_travelEndDate(){return travelEndDate;}
    
    public void set_travelDescription(String travelDescription){this.travelDescription=travelDescription;}
    public String get_travelDescription(){return travelDescription;}
    
    public void set_travelImage(String travelImage){this.travelImage=travelImage;}
    public String get_travelImage(){return travelImage;}
    
    public int getFk_travel() {return fk_travel;}
    public void setFk_travel(int fk_travel) {this.fk_travel = fk_travel;}

    public String getPlace() {return place1;}
    public void setPlace(String place1) {this.place1 = place1;}

    public String getPlace2() {return place2;}
    public void setPlace2(String place2) {this.place2 = place2;}

    public String getPlace3() {return place3;}
    public void setPlace3(String place3) {this.place3 = place3;}

    public String getPlace4() {return place4;}
    public void setPlace4(String place4) {this.place4 = place4;}
}
