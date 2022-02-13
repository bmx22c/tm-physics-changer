<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600;700&display=swap" rel="stylesheet"> 

	<title>Trackmania Physics Changer</title>

	<style>
		* {
			font-family: 'Montserrat', sans-serif;
		}

		html {
			height: 100%;
		}
		
		body {
			background-attachment: fixed;
			background: rgb(0,236,217);
			background: url('./assets/images/bg.png') repeat, linear-gradient(45deg, rgba(0,236,217,1) 0%, rgba(239,0,255,1) 100%);
			color: #fff;
		}

		.form-range::-moz-range-thumb {
			background-color: #44F2A8;
		}

		.form-check-input:checked {
			background-color: #44F2A8;
		}

		.btn {
			background-color: transparent;
			border: 1px solid #fff;
			border-radius: 15px 0 15px 0;
			text-transform: uppercase;
		}

		.btn-success {
			background-color: #44F2A8;
			border-color: #44F2A8;
		}

		.btn-success:hover {
			background-color: #15ef91;
			border-color: #15ef91;
		}

		.btn-danger {
			background-color: #F24444;
			border-color: #F24444;
		}

		.btn-danger:hover {
			background-color: #ef1515;
			border-color: #ef1515;
		}

		.input-group > :not(:first-child):not(.dropdown-menu):not(.valid-tooltip):not(.valid-feedback):not(.invalid-tooltip):not(.invalid-feedback) {
			border-bottom-right-radius: 15px;
		}

		.card {
			background-color: rgba(0, 0, 0, 0.25);
		}

		input.form-control {
			color: #fff;
			background-color:rgba(0, 0, 0, 0.25);
		}

		#notificationCopied.show {
			opacity: 1;
			transition: opacity 0.15s linear;
		}
		
		#notificationCopied {
			opacity: 0;
			transition: opacity 0.15s linear;
			z-index: 999;
		}
	</style>
</head>
<body>
	<div class="container mt-4">
		<h1 class="mb-4 text-familly-montserrat">Trackmania Physics Changer</h1>

		<div class="row">
			<div class="col mb-4">
				<button class="btn btn-danger mb-2" id="resetValues">Reset values</button>
				<button class="btn btn-danger mb-2" id="resetCarPhysics">Reset car physics</button>
				<div class="form-check form-switch">
					<input class="form-check-input" type="checkbox" role="switch" id="btnAutoUpdateURL" checked>
					<label class="form-check-label" for="btnAutoUpdateURL">Auto update URL</label>
				</div>
			</div>
		</div>
		<!--<div class="row mb-2">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Reactor boost up</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicReactorBoostUpEnable" disabled onchange="updateURL()">
							<label class="form-check-label" for="physicReactorBoostUpEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicReactorBoostUpUpdate" onchange="document.querySelector('#physicReactorBoostUpEnable').disabled = !this.checked;updateURL()">
							<label class="form-check-label" for="physicReactorBoostUpUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Red reactor boost up</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicRedReactorBoostUpEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicRedReactorBoostUpEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicRedReactorBoostUpUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicRedReactorBoostUpUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No steer</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNoSteerEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicNoSteerEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNoSteerUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicNoSteerUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No engine</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNoEngineEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicNoEngineEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNoEngineUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicNoEngineUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Full throttle</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicFullThrottleEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicFullThrottleEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicFullThrottleUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicFullThrottleUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Reactor boost down</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicReactorBoostDownEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicReactorBoostDownEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicReactorBoostDownUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicReactorBoostDownUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Red reactor boost down</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicRedReactorBoostDownEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicRedReactorBoostDownEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicRedReactorBoostDownUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicRedReactorBoostDownUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Fragile</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicFragileEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicFragileEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicFragileUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicFragileUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No brake</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNobrakeEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicNobrakeEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicNobrakeUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicNobrakeUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Slow-mo</p>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicSlowMoEnable" onchange="updateURL()">
							<label class="form-check-label" for="physicSlowMoEnable">Enable</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="physicSlowMoUpdate" onchange="updateURL()">
							<label class="form-check-label" for="physicSlowMoUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
		</div>-->
		<div class="row mb-2">
			<div class="col mx-2">
				<!--<div class="row mb-2">
					<div class="card">
						<div class="card-body">
							<label for="physicsCruiseValue" class="form-label">Cruise (value: <span class="physicsCruiseValueText">0</span>)</label>
							<input type="range" class="form-range" min="-999" max="999" id="physicsCruiseValue" oninput="document.querySelector('.physicsCruiseValueText').innerHTML=this.value;updateURL()">
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="physicsCruiseUpdate" onchange="updateURL()">
								<label class="form-check-label" for="physicsCruiseUpdate">Update</label>
							</div>
						</div>
					</div>
				</div>-->
				<div class="row mb-2">
					<div class="card">
						<div class="card-body">
							<label for="physicsAccelerationValue" class="form-label">Acceleration (value: <span class="physicsAccelerationValueText">1.0</span>)</label>
							<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsAccelerationValue" oninput="document.querySelector('.physicsAccelerationValueText').innerHTML=this.value;updateURL()" value="1.0">
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="physicsAccelerationUpdate" onchange="updateURL()">
								<label class="form-check-label" for="physicsAccelerationUpdate">Update</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row mb-2">
					<div class="card">
						<div class="card-body">
							<label for="physicsAdherenceValue" class="form-label">Adherence (value: <span class="physicsAdherenceValueText">1.0</span>)</label>
							<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsAdherenceValue" oninput="document.querySelector('.physicsAdherenceValueText').innerHTML=this.value;updateURL()" value="1.0">
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="physicsAdherenceUpdate" onchange="updateURL()">
								<label class="form-check-label" for="physicsAdherenceUpdate">Update</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col mx-2">
				<div class="row mb-2">
					<div class="card">
						<div class="card-body">
							<label for="physicsControlValue" class="form-label">Control (value: <span class="physicsControlValueText">1.0</span>)</label>
							<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsControlValue" oninput="document.querySelector('.physicsControlValueText').innerHTML=this.value;updateURL()" value="1.0">
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="physicsControlUpdate" onchange="updateURL()">
								<label class="form-check-label" for="physicsControlUpdate">Update</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row mb-2">
					<div class="card">
						<div class="card-body">
							<label for="physicsGravityValue" class="form-label">Gravity (value: <span class="physicsGravityValueText">1.0</span>)</label>
							<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsGravityValue" oninput="document.querySelector('.physicsGravityValueText').innerHTML=this.value;updateURL()" value="1.0">
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="physicsGravityUpdate" onchange="updateURL()">
								<label class="form-check-label" for="physicsGravityUpdate">Update</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="input-group mb-3">
					<button class="btn btn-success" type="button" id="generateBtn">Generate</button>
					<input type="text" class="form-control position-relative" data-tippy-content="Copied" id="finalURL" value="https://tm-physics-changer.herokuapp.com/physics/?">
					<span class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-danger" id="notificationCopied">Copied</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		toastr.options = {
			"closeButton": true,
			"progressBar": true,
		}

		var autoUpdate = true;

		function updateURL(viaBtn = false){
			if(autoUpdate || viaBtn == true){
				var params = {}
	
				//if(document.querySelector("#physicReactorBoostUpUpdate").checked) params.physicReactorBoostUp = document.querySelector("#physicReactorBoostUpEnable").checked
				//if(document.querySelector("#physicRedReactorBoostUpUpdate").checked) params.physicRedReactorBoostUp = document.querySelector("#physicRedReactorBoostUpEnable").checked
				//if(document.querySelector("#physicNoSteerUpdate").checked) params.physicNoSteer = document.querySelector("#physicNoSteerEnable").checked
				//if(document.querySelector("#physicNoEngineUpdate").checked) params.physicNoEngine = document.querySelector("#physicNoEngineEnable").checked
				//if(document.querySelector("#physicFullThrottleUpdate").checked) params.physicFullThrottle = document.querySelector("#physicFullThrottleEnable").checked
				//if(document.querySelector("#physicReactorBoostDownUpdate").checked) params.physicReactorBoostDown = document.querySelector("#physicReactorBoostDownEnable").checked
				//if(document.querySelector("#physicRedReactorBoostDownUpdate").checked) params.physicRedReactorBoostDown = document.querySelector("#physicRedReactorBoostDownEnable").checked
				//if(document.querySelector("#physicFragileUpdate").checked) params.physicFragile = document.querySelector("#physicFragileEnable").checked
				//if(document.querySelector("#physicNobrakeUpdate").checked) params.physicNobrake = document.querySelector("#physicNobrakeEnable").checked
				//if(document.querySelector("#physicSlowMoUpdate").checked) params.physicSlowMo = document.querySelector("#physicSlowMoEnable").checked
	
				//if(document.querySelector("#physicsCruiseUpdate").checked) params.physicsCruise = document.querySelector("#physicsCruiseValue").value
				if(document.querySelector("#physicsAccelerationUpdate").checked) params.physicsAcceleration = document.querySelector("#physicsAccelerationValue").value
				if(document.querySelector("#physicsAdherenceUpdate").checked) params.physicsAdherence = document.querySelector("#physicsAdherenceValue").value
				if(document.querySelector("#physicsControlUpdate").checked) params.physicsControl = document.querySelector("#physicsControlValue").value
				if(document.querySelector("#physicsGravityUpdate").checked) params.physicsGravity = document.querySelector("#physicsGravityValue").value
	
				let baseURL = "https://tm-physics-changer.herokuapp.com/physics/?"
				let paramsStr = new URLSearchParams(params).toString();
	
				document.querySelector("#finalURL").value = baseURL+paramsStr
			}
		}

		const generateBtn = document.querySelector("#generateBtn")
		generateBtn.addEventListener('click', () => {
			updateURL(true)
		})

		const btnAutoUpdateURL = document.querySelector("#btnAutoUpdateURL")
		btnAutoUpdateURL.addEventListener('click', () => {
			autoUpdate = btnAutoUpdateURL.checked
		})

		const notificationCopied = document.querySelector('#notificationCopied')
		const finalURL = document.querySelector('#finalURL')
		finalURL.addEventListener('click', () => {
			let baseURL = "https://tm-physics-changer.herokuapp.com/physics/?"

			if(finalURL.value != baseURL){
				finalURL.select();
				document.execCommand('copy');
				notificationCopied.classList.add('show')
				setTimeout(() => { notificationCopied.classList.remove('show') }, 1000);
			}
		})


		const resetValues = document.querySelector('#resetValues')
		resetValues.addEventListener('click', () => {
			document.querySelector("#physicsAccelerationUpdate").checked = false
			document.querySelector("#physicsAdherenceUpdate").checked = false
			document.querySelector("#physicsControlUpdate").checked = false
			document.querySelector("#physicsGravityUpdate").checked = false

			document.querySelector("#physicsAccelerationValue").value = 1.0
			document.querySelector("#physicsAdherenceValue").value = 1.0
			document.querySelector("#physicsControlValue").value = 1.0
			document.querySelector("#physicsGravityValue").value = 1.0

			document.querySelector(".physicsAccelerationValueText").innerHTML = 1.0
			document.querySelector(".physicsAdherenceValueText").innerHTML = 1.0
			document.querySelector(".physicsControlValueText").innerHTML = 1.0
			document.querySelector(".physicsGravityValueText").innerHTML = 1.0

			updateURL(true)
		})

		const resetCarPhysics = document.querySelector('#resetCarPhysics')
		resetCarPhysics.addEventListener('click', () => {
			document.querySelector("#physicsAccelerationUpdate").checked = true
			document.querySelector("#physicsAdherenceUpdate").checked = true
			document.querySelector("#physicsControlUpdate").checked = true
			document.querySelector("#physicsGravityUpdate").checked = true

			document.querySelector("#physicsAccelerationValue").value = 1.0
			document.querySelector("#physicsAdherenceValue").value = 1.0
			document.querySelector("#physicsControlValue").value = 1.0
			document.querySelector("#physicsGravityValue").value = 1.0

			document.querySelector(".physicsAccelerationValueText").innerHTML = 1.0
			document.querySelector(".physicsAdherenceValueText").innerHTML = 1.0
			document.querySelector(".physicsControlValueText").innerHTML = 1.0
			document.querySelector(".physicsGravityValueText").innerHTML = 1.0

			updateURL(true)
		})
	</script>
</body>
</html>