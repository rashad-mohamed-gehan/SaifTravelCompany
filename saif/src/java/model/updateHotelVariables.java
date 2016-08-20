/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ascom
 */
public class updateHotelVariables {

    private int hotel_id;
    private String hotel_name;
    private String hotel_address;
    private String hotel_stars;
    private int City_id;
    private String hotel_description;
    private String hotel_image;

    /**
     * @return the hotelName
     */
    public String getHotelName() {
        return hotel_name;
    }

    /**
     * @param hotelName the hotelName to set
     */
    public void setHotelName(String hotelName) {
        this.hotel_name = hotelName;
    }

    /**
     * @return the hotelAddress
     */
    public String getHotelAddress() {
        return hotel_address;
    }

    /**
     * @param hotelAddress the hotelAddress to set
     */
    public void setHotelAddress(String hotelAddress) {
        this.hotel_address = hotelAddress;
    }

    /**
     * @return the hotelStars
     */
    public String getHotelStars() {
        return hotel_stars;
    }

    /**
     * @param hotelStars the hotelStars to set
     */
    public void setHotelStars(String hotelStars) {
        this.hotel_stars = hotelStars;
    }

    /**
     * @return the hotelCity
     */
    public int getHotelCity() {
        return City_id;
    }

    /**
     * @param hotelCity the hotelCity to set
     */
    public void setHotelCity(int hotelCity) {
        this.City_id = hotelCity;
    }

    /**
     * @return the hotelDescription
     */
    public String getHotelDescription() {
        return hotel_description;
    }

    /**
     * @param hotelDescription the hotelDescription to set
     */
    public void setHotelDescription(String hotelDescription) {
        this.hotel_description = hotelDescription;
    }

    /**
     * @return the hotelImage
     */
    public String getHotelImage() {
        return hotel_image;
    }

    /**
     * @param hotelImage the hotelImage to set
     */
    public void setHotelImage(String hotelImage) {
        this.hotel_image = hotelImage;
    }

    /**
     * @return the hotel_id
     */
    public int getHotel_id() {
        return hotel_id;
    }

    /**
     * @param hotel_id the hotel_id to set
     */
    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }
}
