const app = new Vue({
	el:'#main',
	data:{
		personas: []
	},
	mounted(){
		this.cargarPersonas();
	},
	methods:{
		cargarPersonas(){
			axios.get('?view=cargar')
			.then((respuesta) => {
				console.log(respuesta);
				this.personas = respuesta.data;
			});
		}

	} 
});