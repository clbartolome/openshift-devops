package com.redhat;

import static jakarta.ws.rs.core.MediaType.APPLICATION_JSON;

import java.util.List;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;

@Path("/champions")
@Produces(APPLICATION_JSON)
@Consumes(APPLICATION_JSON)
public class ChampionResource {

    @GET
    public Response getChampions() {
      List<Champion> champions = Champion.listAll();
      return Response.ok(champions).build();
    }
}
