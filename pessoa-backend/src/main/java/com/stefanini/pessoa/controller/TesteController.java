package com.stefanini.pessoa.controller;

import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@Path("/teste")
public class TesteController {

	public Response teste() {
		return Response.ok().entity("Teste").build();
	}
	
}