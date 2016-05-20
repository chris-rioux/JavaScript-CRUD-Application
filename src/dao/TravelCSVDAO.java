package dao;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.HashMap;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class TravelCSVDAO implements TravelDAO {
	private static final String FILE_NAME="/WEB-INF/travel.csv";
	private HashMap<String, Trip> trips = new HashMap<>();
	
	@Autowired
	private ApplicationContext ac;
	
	@PostConstruct
	public void init() {
		try (
			InputStream is = ac.getResource(FILE_NAME).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));
			) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				int id;
				String[] tokens = line.split(",");
				String city = tokens[0];
				String state = tokens[1];
				String country = tokens[2];
				String code = tokens[3];
				String purpose = tokens[4];
				int duration = Integer.parseInt(tokens[5]);
				trips.put(city, new Trip(city, state, country, code, purpose, duration));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}
	
	@Override
	public Trip getTrip(String city) {
		Trip trip = null;
		for (Trip t : trips.values()) {
			if (t.getCity().equals(city)) {
				trip = t;
				break;
			}
		}
		return trip;
	}
	
	@Override
	public Collection<Trip> getTrips() {
		return trips.values();
	}
	
	@Override
	public void addTrip(Trip trip) {
		trips.put(trip.getCity(), trip);
	}
	
	@Override
	public void deleteTrip(String city) {
		trips.remove(city);
	}
	
	@Override
	public void editTrip(Trip trip, String city) {
		trips.remove(city);
		trips.put(trip.getCity(), trip);
	}

}