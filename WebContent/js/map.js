var map = new Datamap({
	scope: 'world',
	element: document.getElementById('map'),
	projection: 'mercator',
	fills: {
		defaultFill: '#aaaaaa',
		'Visited': '#95e226',
		'Lived': '#0fa0fa',
		'Worked': '#e01e98',
		'Lived and Worked': '#e22646'
	},
	data: {
		USA: { name: "USA", fillKey: "Lived and Worked" },
		ABW: { name: "Aruba", fillKey: "Visited" },
		CAN: { name: "Canada", fillKey: "Visited" },
		DEU: { name: "Germany", fillKey: "Visited" },
		AFG: { name: "Afghanistan", fillKey: "Worked" },
		IRQ: { name: "Iraq", fillKey: "Worked" },
		KWT: { name: "Kuwait", fillKey: "Worked" },
		MEX: { name: "Mexico", fillKey: "Visited" },
		SWE: { name: "Sweden", fillKey: "Visited" },
		ITA: { name: "Italy", fillKey: "Worked" },
		NOR: { name: "Norway", fillKey: "Visited" },
	},
	geographyConfig: {
		popupTemplate: function(geo, data) {
			return data && data.fillKey && "<div class='hoverinfo'><strong>" + data.name + ": " + data.fillKey + "</strong></div>";
		},
		highlightOnHover: true
	}
	
});