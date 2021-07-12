public class PostManager {
	@InvocableMethod(label='Submit Post' description='Returns the body of the server response' category='External')
    public static List<String> submitPost(List<String> bodyText) {
        HttpResponse response = PostCallouts.makePostCallout(bodyText[0]);
        List<String> res = new List<String>();
        res.add(response.getBody());
       	return res;
    }
}