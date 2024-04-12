String strSentVerificationCodeMessage(String phoneNumber) =>
    "We sent you a 4 digit code to verify your phone number (+91 $phoneNumber).";
String strHello(String name) => "Hello, $name";
String strFoundResults(int resultCount) => "Found $resultCount results";
String strSeeAllReviews(int reviewCount) => "See all $reviewCount reviews";
String strStudentsCount(int numberOfStudents) => "$numberOfStudents students";
String strStarsReviews(int stars) => "$stars reviews";
String strRatingPlaceholder(double rating) =>
    "${(rating % 1 == 0) ? rating.toInt() : rating}/5";
String strCourseCountPlaceholder(int courseCount) => "$courseCount courses";
String strStudentCountPlaceholder(int courseCount) => "$courseCount students";
