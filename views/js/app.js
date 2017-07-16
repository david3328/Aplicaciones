const app = new Vue({
	el: '#modal',
	data:{
		user:'',
		pass: '',
		mostrar: false,
		mostrarreg: false,
		mensaje: '',
		reguser: '',
		regpass: '',
		conpass: '',
		name: '',
		app: '',
		apm: '',
		age: '',
		phone: '',
		mail: '',
	},
	mounted(){

	},
	methods:{
		loginUser(){	
			let params = new URLSearchParams();
			params.append('user', 	this.user);
			params.append('pass', this.pass);

			axios.post('?view=login',params)
			  .then((respuesta) => {
				this.mostrar=true;
				if(respuesta.data==1){
					this.mensaje = "Datos correctos, sesion iniciada";
				}else if(respuesta==2){
					this.mensaje="Datos vacíos, llenar todos los campos";
				}else{
					this.mensaje = "Datos incorrectos, usuario no encontrado";
				}
			});
			 
		},

		regUser(){
			let params = new URLSearchParams();
			params.append('user', 	this.reguser);
			params.append('pass', this.regpass);
			params.append('name', 	this.name);
			params.append('app', this.app);
			params.append('apm', 	this.apm);
			params.append('age', this.age);
			params.append('phone', 	this.phone);
			params.append('mail', this.mail);


			axios.post('?view=reg',params)
			  .then((respuesta) => {
				this.mostrar=true;				
			});
		}

		
	}
});