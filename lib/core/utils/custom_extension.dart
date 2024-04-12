import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

extension CustomTextProperties on VxTextBuilder {
  // fonts
  VxTextBuilder get roboto => fontFamily(GoogleFonts.roboto().fontFamily!);
  VxTextBuilder get exo => fontFamily(GoogleFonts.exo().fontFamily!);
  VxTextBuilder get poppins => fontFamily(GoogleFonts.poppins().fontFamily!);
  VxTextBuilder get nunitoSans =>
      fontFamily(GoogleFonts.nunitoSans().fontFamily!);
  VxTextBuilder get dmSans => fontFamily(GoogleFonts.dmSans().fontFamily!);
  VxTextBuilder get inter => fontFamily(GoogleFonts.inter().fontFamily!);
  VxTextBuilder get rubik => fontFamily(GoogleFonts.rubik().fontFamily!);
  VxTextBuilder get raleway => fontFamily(GoogleFonts.raleway().fontFamily!);
}
