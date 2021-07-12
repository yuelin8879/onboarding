@isTest
private class PostCalloutsTest {
	@isTest static void testPostCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new PostHttpCalloutMock()); 
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        HttpResponse response = PostCallouts.makePostCallout('{"title":"post title","body":"post body","userId":15}');
        // Verify that the response received contains fake values
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = '{"title":"post title","body":"post body","userId":15}';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, response.getStatusCode());
	}
}