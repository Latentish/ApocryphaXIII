#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day

///displays the current time into the round, with a lot of extra code just there for ensuring it looks okay after an entire day passes
#define ROUND_TIME(...) ( "[STATION_TIME_PASSED() > MIDNIGHT_ROLLOVER ? "[round(STATION_TIME_PASSED()/MIDNIGHT_ROLLOVER)]:[gameTimestamp(wtime = STATION_TIME_PASSED())]" : gameTimestamp(wtime = STATION_TIME_PASSED())]" )

///Returns the time that has passed since the game started
#define STATION_TIME_PASSED(...) (world.time - SSticker.round_start_time)

/// Define that just has the current in-universe year for use in whatever context you might want to display that in. (For example, 2022 -> 2562 given a 540 year offset)
#define CURRENT_STATION_YEAR (GLOB.year_integer + STATION_YEAR_OFFSET)

/// In-universe, TFN is set 10 years in the past from the real-world day, hence this number for determining the year-offset for the in-game year.
#define STATION_YEAR_OFFSET -10

#define JANUARY		1
#define FEBRUARY	2
#define MARCH		3
#define APRIL		4
#define MAY			5
#define JUNE		6
#define JULY		7
#define AUGUST		8
#define SEPTEMBER	9
#define OCTOBER		10
#define NOVEMBER	11
#define DECEMBER	12

//Select holiday names -- If you test for a holiday in the code, make the holiday's name a define and test for that instead
#define NEW_YEAR				"New Year"
#define VALENTINES				"Valentine's Day"
#define APRIL_FOOLS				"April Fool's Day"
#define EASTER					"Easter"
#define HALLOWEEN				"Halloween"
#define CHRISTMAS				"Christmas"
#define FESTIVE_SEASON			"Festive Season"
#define GARBAGEDAY				"Garbage Day"
#define MONKEYDAY				"Monkey Day"
/*

Days of the week to make it easier to reference them.

When using time2text(), please use "DDD" to find the weekday. Refrain from using "Day"

*/

#define MONDAY		"Mon"
#define TUESDAY		"Tue"
#define WEDNESDAY	"Wed"
#define THURSDAY	"Thu"
#define FRIDAY		"Fri"
#define SATURDAY	"Sat"
#define SUNDAY		"Sun"

#define MILLISECONDS *0.01

#define DECISECONDS *1 //the base unit all of these defines are scaled by, because byond uses that as a unit of measurement for some fucking reason

#define SECONDS *10

#define MINUTES SECONDS*60

#define HOURS MINUTES*60

#define DAYS HOURS*24
#define YEARS DAYS*365 //fuck leap days, they were removed in 2069

#define TICKS *world.tick_lag

#define DS2TICKS(DS) ((DS)/world.tick_lag)

#define TICKS2DS(T) ((T) TICKS)
