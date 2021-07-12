@isTest
global class PostHttpCalloutMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"title":"post title","body":"post body","userId":15}');
        response.setStatusCode(200);
        return response; 
    }
}