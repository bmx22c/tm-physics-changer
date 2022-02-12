<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

	<title>Trackmania Physics Changer</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center mb-4">Trackmania Physics Changer</h1>

		<div class="row">
			<div class="col">
				<button class="mb-4 btn btn-info">Reset</button>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Reactor boost up</p>
						<!-- <input type="checkbox" id="physicReactorBoostUp"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicReactorBoostUpEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicReactorBoostUpEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicReactorBoostUpUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicReactorBoostUpUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Red reactor boost up</p>
						<!-- <input type="checkbox" id="physicRedReactorBoostUp"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicRedReactorBoostUpEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicRedReactorBoostUpEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicRedReactorBoostUpUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicRedReactorBoostUpUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No steer</p>
						<!-- <input type="checkbox" id="physicNoSteer"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicNoSteerEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNoSteerEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicNoSteerUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNoSteerUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No engine</p>
						<!-- <input type="checkbox" id="physicNoEngine"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicNoEngineEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNoEngineEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicNoEngineUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNoEngineUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Full throttle</p>
						<!-- <input type="checkbox" id="physicFullThrottle"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicFullThrottleEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicFullThrottleEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicFullThrottleUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicFullThrottleUpdate">Update</label>
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
						<!-- <input type="checkbox" id="physicReactorBoostDown"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicReactorBoostDownEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicReactorBoostDownEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicReactorBoostDownUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicReactorBoostDownUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Red reactor boost down</p>
						<!-- <input type="checkbox" id="physicRedReactorBoostDown"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicRedReactorBoostDownEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicRedReactorBoostDownEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicRedReactorBoostDownUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicRedReactorBoostDownUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Fragile</p>
						<!-- <input type="checkbox" id="physicFragile"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicFragileEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicFragileEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicFragileUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicFragileUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>No brake</p>
						<!-- <input type="checkbox" id="physicNobrake"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicNobrakeEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNobrakeEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicNobrakeUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicNobrakeUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<p>Slow-mo</p>
						<!-- <input type="checkbox" id="physicSlowMo"> -->
						<div class="btn-group" role="group">
							<input type="checkbox" class="btn-check" id="physicSlowMoEnable" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicSlowMoEnable">Enable</label>
						  
							<input type="checkbox" class="btn-check" id="physicSlowMoUpdate" autocomplete="off">
							<label class="btn btn-outline-primary" for="physicSlowMoUpdate">Update</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col">
				<div class="row">
					<label for="physicsCruiseValue" class="form-label">Cruise (value: <span class="physicsCruiseValueText">0</span>)</label>
					<input type="range" class="form-range" min="0" max="999" id="physicsCruiseValue" oninput="document.querySelector('.physicsCruiseValueText').innerHTML=this.value">
					<input type="checkbox" class="btn-check" id="physicsCruiseUpdate" autocomplete="off">
  					<label class="btn btn-outline-primary" for="physicsCruiseUpdate">Update</label>
				</div>
				<div class="row">
					<label for="physicsAccelerationValue" class="form-label">Acceleration (value: <span class="physicsAccelerationValueText">1.0</span>)</label>
					<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsAccelerationValue" oninput="document.querySelector('.physicsAccelerationValueText').innerHTML=this.value" value="1.0">
					<input type="checkbox" class="btn-check" id="physicsAccelerationUpdate" autocomplete="off">
  					<label class="btn btn-outline-primary" for="physicsAccelerationUpdate">Update</label>
				</div>
				<div class="row">
					<label for="physicsAdherenceValue" class="form-label">Adherence (value: <span class="physicsAdherenceValueText">1.0</span>)</label>
					<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsAdherenceValue" oninput="document.querySelector('.physicsAdherenceValueText').innerHTML=this.value" value="1.0">
					<input type="checkbox" class="btn-check" id="physicsAdherenceUpdate" autocomplete="off">
  					<label class="btn btn-outline-primary" for="physicsAdherenceUpdate">Update</label>
				</div>
				<div class="row">
					<label for="physicsControlValue" class="form-label">Control (value: <span class="physicsControlValueText">1.0</span>)</label>
					<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsControlValue" oninput="document.querySelector('.physicsControlValueText').innerHTML=this.value" value="1.0">
					<input type="checkbox" class="btn-check" id="physicsControlUpdate" autocomplete="off">
  					<label class="btn btn-outline-primary" for="physicsControlUpdate">Update</label>
				</div>
				<div class="row">
					<label for="physicsGravityValue" class="form-label">Gravity (value: <span class="physicsGravityValueText">1.0</span>)</label>
					<input type="range" class="form-range" min="0" max="1" step="0.01" id="physicsGravityValue" oninput="document.querySelector('.physicsGravityValueText').innerHTML=this.value" value="1.0">
					<input type="checkbox" class="btn-check" id="physicsGravityUpdate" autocomplete="off">
  					<label class="btn btn-outline-primary" for="physicsGravityUpdate">Update</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="input-group mb-3">
					<button class="btn btn-success" type="button" id="generateBtn">Generate</button>
					<input type="text" class="form-control" data-tippy-content="Copied" onclick="this.select();document.execCommand('copy');" id="finalURL">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/@popperjs/core@2"></script>
	<script src="https://unpkg.com/tippy.js@6"></script>
	<script>
		// const instance = tippy(document.querySelector('#finalURL'))
		//instance.disable();

		const generateBtn = document.querySelector("#generateBtn")
		generateBtn.addEventListener('click', () => {
			var params = {}

			if(document.querySelector("#physicReactorBoostUpUpdate").checked) params.physicReactorBoostUp = document.querySelector("#physicReactorBoostUpEnable").checked
			if(document.querySelector("#physicRedReactorBoostUpUpdate").checked) params.physicRedReactorBoostUp = document.querySelector("#physicRedReactorBoostUpEnable").checked
			if(document.querySelector("#physicNoSteerUpdate").checked) params.physicNoSteer = document.querySelector("#physicNoSteerEnable").checked
			if(document.querySelector("#physicNoEngineUpdate").checked) params.physicNoEngine = document.querySelector("#physicNoEngineEnable").checked
			if(document.querySelector("#physicFullThrottleUpdate").checked) params.physicFullThrottle = document.querySelector("#physicFullThrottleEnable").checked
			if(document.querySelector("#physicReactorBoostDownUpdate").checked) params.physicReactorBoostDown = document.querySelector("#physicReactorBoostDownEnable").checked
			if(document.querySelector("#physicRedReactorBoostDownUpdate").checked) params.physicRedReactorBoostDown = document.querySelector("#physicRedReactorBoostDownEnable").checked
			if(document.querySelector("#physicFragileUpdate").checked) params.physicFragile = document.querySelector("#physicFragileEnable").checked
			if(document.querySelector("#physicNobrakeUpdate").checked) params.physicNobrake = document.querySelector("#physicNobrakeEnable").checked
			if(document.querySelector("#physicSlowMoUpdate").checked) params.physicSlowMo = document.querySelector("#physicSlowMoEnable").checked

			if(document.querySelector("#physicsCruiseUpdate").checked) params.physicsCruise = document.querySelector("#physicsCruiseValue").value
			if(document.querySelector("#physicsAccelerationUpdate").checked) params.physicsAcceleration = document.querySelector("#physicsAccelerationValue").value
			if(document.querySelector("#physicsAdherenceUpdate").checked) params.physicsAdherence = document.querySelector("#physicsAdherenceValue").value
			if(document.querySelector("#physicsControlUpdate").checked) params.physicsControl = document.querySelector("#physicsControlValue").value
			if(document.querySelector("#physicsGravityUpdate").checked) params.physicsGravity = document.querySelector("#physicsGravityValue").value

			let baseURL = "https://tm-physics-changer.herokuapp.com/physics/?"
			let paramsStr = new URLSearchParams(params).toString();
			console.log(baseURL+paramsStr);
			

			document.querySelector("#finalURL").value = baseURL+paramsStr
		})
	</script>
</body>
</html>