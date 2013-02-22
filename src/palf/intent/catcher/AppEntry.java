package palf.intent.catcher;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import java.util.Set;

public class AppEntry extends Activity {

	@Override
	public void onCreate (Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		Intent intent = getIntent();
		String message = "";
		try {
			Bundle bundle = intent.getExtras();
			Set<String> keys = bundle.keySet();
			for (String key : keys) {
				String value = bundle.get(key).toString();
				String pair = key + " : " + value;
				message += pair + "\n";
			}
		} catch (Exception e) {
			message = "no data sent with intent (probably)";
		}

		TextView textView = new TextView(this);
		textView.setText(message);

		setContentView(textView);
	}

}
