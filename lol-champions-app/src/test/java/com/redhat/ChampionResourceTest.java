package com.redhat;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.hasItems;

import io.quarkus.test.junit.QuarkusTest;
import jakarta.ws.rs.core.HttpHeaders;
import jakarta.ws.rs.core.MediaType;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

@QuarkusTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)

public class ChampionResourceTest {

    @Test
    @Order(1)
    public void test_getChampions_OK() {
        given()
            .header(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON)
            .when()
            .get("/champions/")
            .then()
            .statusCode(200)
            .body("size()", equalTo(2))
            .body("id", hasItems(1, 2));
    }

    @Test
    @Order(1)
    public void test_getWrongUrl() {
        given()
            .header(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON)
            .when()
            .get("/wrongurl/")
            .then()
            .statusCode(404);
    }
}