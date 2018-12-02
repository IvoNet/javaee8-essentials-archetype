package com.joyincoding.ping.boundary;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * A simple demo class.
 */
@Path("/ping")
public class PingResource {

    @GET
    public String ping() {
        return "pong";
    }

}
