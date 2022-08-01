public class Test {
	private static String message = "This is a test message from test branch";
	private String yetMessage = "Another message from another test branch";

	public void call() {
		System.out.println(Test.message);
		System.out.println(yetMessage);
	}
}
