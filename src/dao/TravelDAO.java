package dao;

import java.util.Collection;

public interface TravelDAO {
	public Trip getTrip(String city);
	public Collection<Trip> getTrips();
	public void addTrip(Trip trip);
	public void deleteTrip(String city);
	public void editTrip(Trip trip, String city);
}