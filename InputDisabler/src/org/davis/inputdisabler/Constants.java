package org.davis.inputdisabler;
import java.io.File;

/*
 * Created by Dāvis Mālnieks on 04/10/2015

 * Updated by Vincent Zvikaramba 07/09/2016

 */

public final class Constants {

	/* Set a private constructor so our class can't be instantiated */
    private Constants() { }

	// Doze intent
	public static final String ACTION_DOZE_PULSE_STARTING =
		"android.intent.action.DOZE_PULSE_STARTING";

	/* Declare some paths to the touch screen sysfs interfaces*/
	private final String TS_PATH_1 =
		"/sys/devices/soc.0/i2c.78/i2c-11/11-0020/input/input1/enabled";
	private final String TS_PATH_2 =
		"/sys/devices/soc.0/78b9000.i2c/i2c-5/5-0020/input/input2/enabled";
	private final String TS_PATH_3 =
		"/sys/devices/soc.0/i2c.72/i2c-12/12-0048/input/input3/enabled";
	private final String TS_PATH_4 =
		"/sys/class/input/input3/enabled";

	/* Declare some File objects */
	private File ts_1 = new File(TS_PATH_1);
	private File ts_2 = new File(TS_PATH_2);
	private File ts_3 = new File(TS_PATH_3);

	/* Define a getter for the touch screen path */
	public static String getTsPath() {

		/* Check if the touch screen files exist and set the correct path */
		if(ts_1.exists()) {
			return this.TS_PATH_1;
		}
		else if (ts_2.exists()) {
			return this.TS_PATH_2;
		}
		else if (ts_3.exists()) {
			return this.TS_PATH_3;
		}
		/* in case none of the others are extant, try the generic path as backup */
    	return this.TS_PATH_4;
    }

}




