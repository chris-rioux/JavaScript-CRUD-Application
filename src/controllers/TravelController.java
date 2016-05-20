package controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import dao.TravelDAO;
import dao.Trip;

@RestController
public class TravelController {
	@Autowired
	private TravelDAO travelDAO;
	
	@RequestMapping(value="Trip/{city}", method=RequestMethod.GET)
	public Trip getTrip(@PathVariable String city) {
		Trip trip = travelDAO.getTrip(city);
		return trip;
	}
	
	@RequestMapping("Trips")
	public Collection<Trip> getTrips() {
		Collection<Trip> trips = travelDAO.getTrips();
		return trips;
	}
	
	@RequestMapping(value="AddTrip", method=RequestMethod.POST)
	public void addTrip(@RequestBody Trip trip) {
		travelDAO.addTrip(trip);
	}
	
	@RequestMapping(value="DeleteTrip/{city}", method=RequestMethod.DELETE)
	public void deleteTrip(@PathVariable String city) {
		travelDAO.deleteTrip(city);
	}
	
	@RequestMapping(value="EditTrip/{city}", method=RequestMethod.PUT)
	public void editTrip(@RequestBody Trip trip, @PathVariable String city) {
		travelDAO.editTrip(trip, city);
	}

}