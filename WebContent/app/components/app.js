(function() {
	
	// Read Trip & Generate Table
	// declare global variable for data
	var xhr = new XMLHttpRequest();
	
	xhr.open('GET', 'rest/Trips');
	
	xhr.onreadystatechange = function() {
		if (xhr.status < 400 && xhr.readyState === 4) {
			data = JSON.parse(xhr.responseText);
			GenerateTable();
		}
		else if (xhr.readyState === 4 && xhr.status >= 400) {
			console.log('Error Loading Data.');
		}
	};
	
	xhr.send(null);
	
	// Dynamic table creation
	function GenerateTable() {
			    
	    //Create a HTML Table element
	    var table = document.createElement("TABLE");
	    table.border = "1";
	 
	    	//Add the header row
	    	var headerRow = document.createElement("TR");
	    
	    	//create editBtn column
	    	var editCell = document.createElement("TH");
	    	editCell.textContent = 'EDIT';
	    	headerRow.appendChild(editCell);
	    
	    	// iterate over first object to extract the properties as column headers
	    	for (p in data[0]) {
	    		var headerCell = document.createElement("TH");
	    		headerCell.textContent = p.toUpperCase();
	    		headerRow.appendChild(headerCell);
	    	};
	    
	    	// create deleteBtn column
	    	var deleteCell = document.createElement("TH");
	    	deleteCell.textContent = 'DELETE';
	    	headerRow.appendChild(deleteCell);
	    
	    	// append all column headers to table
	    	table.appendChild(headerRow);
	 
	    		//Add the data rows 
	    		data.forEach(function(val) {
	    			var row = document.createElement("TR");
	    	
		    		// create editBtn
			    	var editBtn = document.createElement("BUTTON")
			    	editBtn.setAttribute("id", val.city);
			    	editBtn.setAttribute("name", val.city);
			    	editBtn.className = 'btn btn-secondary btn-sm center-block';
			    	editBtn.textContent = 'Edit';
			    	editBtn.addEventListener('click', function(f) {
			    		editTrip(f.target.name);
			    	});
			    	row.appendChild(editBtn);
		    	
			    	// iterate over values of each object property for cell values 
			    	for (v in val) {
			    		var cell = document.createElement("TD");
			    		cell.textContent = val[v];
			    		row.appendChild(cell);
			    	};
			    	
			    	// create deleteBtn
			    	var deleteBtn = document.createElement("BUTTON")
			    	deleteBtn.setAttribute("id", val.city);
			    	deleteBtn.setAttribute("name", val.city);
			    	deleteBtn.className = 'btn btn-secondary btn-sm center-block';
			    	deleteBtn.textContent = 'Delete';
			    	deleteBtn.addEventListener('click', function(e) {
			    		deleteTrip(e.target.name);
			    	});
			    	row.appendChild(deleteBtn);
		    	
			    	// append entire row to table
			    	table.appendChild(row);
	    		});

	    var tripTable = document.getElementById("tripTable");
	    tripTable.innerHTML = "";
	    tripTable.appendChild(table);
	};
	
	// Add Trip
	document.getElementById('addTripSubmit').addEventListener('click', function(e) {
		e.preventDefault();
	
		// target form from the button (target element)
		var form = e.target.parentElement.parentElement;
			
		// scrape data & take in value to add trip
		var codey = form.code.value;
		
		var city = (typeof form.city.value === 'string') ? form.city.value : null;
		var state = (typeof form.state.value === 'string') ? form.state.value : null;
		var country = (typeof form.country.value === 'string') ? form.country.value : null;
		var code = (typeof form.code.value === 'string' && codey.length === 3) ? form.code.value : null;
		var purpose = (typeof form.purpose.value === 'string') ? form.purpose.value : null;
		var duration = (!isNaN(form.duration.value)) ? form.duration.value : null;
		
		var formData = [city, state, country, code, purpose, duration];
				
		// verify form inputs
		function verifyFormData() {
			for (var i = 0; i < formData.length; i++) {
				if (formData[i] === null) {
					throw new Error('Form Error: ' + formData[i] + ' can\'t be Null');
				}
				else {
				}
			}
		};
		
		verifyFormData(formData);
		
		// JS Object for submitting a trip to csv/db
		var newTrip = {
			city: form.city.value,
			state: form.state.value,
			country: form.country.value,
			code: form.code.value,
			purpose: form.purpose.value,
			duration: form.duration.value
		};
		
		// xhr posting of trip to csv/db
		var jsonTrip = JSON.stringify(newTrip);
		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'rest/AddTrip');
		
		xhr.setRequestHeader('Content-type', 'application/json');
		
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status < 400) {
				location.reload();				
				e.target.parentElement.reset();
				GenerateTable();
			}
		};
		
		xhr.send(jsonTrip);
	});
		
	// Edit Trip
	function editTrip(city) {
		
		// clear table from div
		function clearTable(elementId) {
			document.getElementById(elementId).innerHTML = "";
		}
		
		clearTable("myTrips");
		
		// get data associated with trip
		var xhr = new XMLHttpRequest();
		
		xhr.open('GET', 'rest/Trip/' + city);
		
		xhr.onreadystatechange = function() {
			if (xhr.status < 400 && xhr.readyState === 4) {
				data = JSON.parse(xhr.responseText);
				createForm(data);
			}
			else if (xhr.readyState === 4 && xhr.status >= 400) {
				console.log('Error Loading Data.');
			}
		};
		
		xhr.send(null);
		
		// create form with old data as current value/label
		function createForm(data) {
			var title = document.createElement("H3")
			title.className = 'text-xs-center';
			title.textContent = 'Edit the Trip';
			var form = document.createElement("FORM");
			form.setAttribute("id", "editForm");
			form.className = 'form-group';
			
			//Add the data rows 
			for (val in data) {
				var label = document.createElement("LABEL");
				label.textContent = val.toUpperCase();
				form.appendChild(label);
				var input = document.createElement("INPUT");
				input.className = 'form-control';
				input.name = val;
				input.value = data[val];
				form.appendChild(input);
				var brk = document.createElement("BR");
				form.appendChild(brk);
	    	}
			
    		// create submit btn
	    	var submitBtn = document.createElement("BUTTON")
	    	submitBtn.setAttribute("id", "submitTrip");
	    	submitBtn.setAttribute("name", data.city);
	    	submitBtn.className = 'btn btn-secondary btn-sm center-block';
	    	submitBtn.textContent = 'Submit';
	    	submitBtn.addEventListener('click', function(g) {
				g.preventDefault();
				var form = g.target.parentElement;
				var codey = form.code.value;
				
				var city = (typeof form.city.value === 'string') ? form.city.value : null;
				var state = (typeof form.state.value === 'string') ? form.state.value : null;
				var country = (typeof form.country.value === 'string') ? form.country.value : null;
				var code = (typeof form.code.value === 'string' && codey.length === 3) ? form.code.value : null;
				var purpose = (typeof form.purpose.value === 'string') ? form.purpose.value : null;
				var duration = (!isNaN(form.duration.value)) ? form.duration.value : null;
				
				var formData = [city, state, country, code, purpose, duration];
								
				// verify form inputs
				function verifyFormData() {
					for (var i = 0; i < formData.length; i++) {
						if (formData[i] === null) {
							throw new Error('Form Error: ' + formData[i] + ' can\'t be Null');
						}
						else {
						}
					}
				}
				
				verifyFormData(formData);
				
				// try deleting record and posting new updated one if the city changes...
				if (data.city != city) {
					deleteTrip(data.city)
				}
				
				// JS Object for editing a trip to csv/db
				var editedTrip = {
						city: form.city.value,
						state: form.state.value,
						country: form.country.value,
						code: form.code.value,
						purpose: form.purpose.value,
						duration: form.duration.value
				};
								
				// xhr posting of edited trip to csv/db
				var jsonEditTrip = JSON.stringify(editedTrip);
				
				var xhr = new XMLHttpRequest();
				
				xhr.open('PUT', 'rest/EditTrip/' + city);
				
				xhr.setRequestHeader('Content-type', 'application/json');
				
				xhr.onreadystatechange = function() {
					if (xhr.status < 400 && xhr.readyState === 4) {
						location.reload();
						GenerateTable();
					}
					else if (xhr.readyState === 4 && xhr.status >= 400) {
						console.log('Error Loading Data.');
					}
				};
				
				xhr.send(jsonEditTrip);
	    	});
	    	
	    	form.appendChild(submitBtn);
	    	
	    	var tripForm = document.getElementById("tripForm");
	    	tripForm.innerHTML = "";
	    	tripForm.appendChild(title);
	    	tripForm.appendChild(form);
		};
		
	};
	
	// Delete Trip
	function deleteTrip(city) {
		var xhr = new XMLHttpRequest();
		xhr.open('DELETE', 'rest/DeleteTrip/' + city);
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status < 400) {
				location.reload();				
				GenerateTable();
			}
		}
		
		xhr.send(null);
	};
	
})();