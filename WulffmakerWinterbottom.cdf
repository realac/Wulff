(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    241889,       5508]
NotebookOptionsPosition[    241268,       5472]
NotebookOutlinePosition[    241626,       5488]
CellTagsIndexPosition[    241583,       5485]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Wulffmaker: Winterbottom shapes V3.0", "Title",
 CellChangeTimes->{{3.5184451290815563`*^9, 3.518445138694195*^9}, {
  3.543248148414751*^9, 3.543248176241723*^9}, {3.551118695702518*^9, 
  3.551118700451988*^9}, {3.590158520593725*^9, 3.5901585225819407`*^9}}],

Cell[TextData[{
 "Brought to you by Rachel V. Zucker & W. Craig Carter\nPlease direct \
questions, comments, and bug reports to rzucker@mit.edu\n\nIf you use this \
software, please cite us in your work: \nRV Zucker, D Chatain, U Dahmen, S \
Hagege, WC Carter. \[OpenCurlyDoubleQuote]New Software Tools for the \
Calculation and Display of Isolated and Attached Interfacial-Energy \
Minimizing Particle Shapes.\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science",
  FontSlant->"Italic"],
 " ",
 StyleBox["47",
  FontWeight->"Bold"],
 ":8290-8302 (2012)\n\n(Double-click the blue brackets at the far right of \
the window to expand/hide sections)"
}], "Subsubtitle",
 CellChangeTimes->{{3.518445150958107*^9, 3.518445204025096*^9}, {
   3.518445591350183*^9, 3.518445595113935*^9}, {3.518520646159315*^9, 
   3.5185206550535793`*^9}, 3.5511186900958138`*^9, {3.5901584823029623`*^9, 
   3.59015848288225*^9}}],

Cell[CellGroupData[{

Cell["Introduction", "Section",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447108352004*^9, 3.518447131263427*^9}, {
  3.519059793403633*^9, 3.519059797232799*^9}, {3.546691469192992*^9, 
  3.5466914696703367`*^9}}],

Cell["Current Capabilities", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447148436452*^9, 3.5184472131322947`*^9}, {
   3.518448893367828*^9, 3.518448893773073*^9}, 3.5184501348073997`*^9}],

Cell[TextData[{
 "Wulffmaker is designed to display the shape of crystals in three \
dimensions. It is an improved version of the older progam ",
 StyleBox["Wulffman",
  FontSlant->"Italic"],
 ", and is platform-independant. The user can select any crystallographic \
symmetry and specify crystallographic axes (a, b, c) and angles (\[Alpha], \
\[Beta], \[Gamma]), up to 30 symmetrically distinct facets (\
\[OpenCurlyDoubleQuote]facet families\[CloseCurlyDoubleQuote]), and assigns \
each family a surface energy (\[Gamma]). The facet families are identified by \
their normal vector in Miller indices, {h k l}. The user also controls some \
aspects of the Wulff shape plot, including colors, opacity, and whether to \
display the crystallographic axes. \[OpenCurlyDoubleQuote]Viewing axis\
\[CloseCurlyDoubleQuote] is the viewing direction (orthagonal to your \
screen), and \[OpenCurlyDoubleQuote]vertical \
direction\[CloseCurlyDoubleQuote] is the crystallographic direction pointing \
to the top of your screen. By clicking an dragging on the plot its self, it \
can be rotated. For a complete discussion of this software, and the relation \
to materials science, see the associated publication: RV Zucker, D Chatain, U \
Dahmen, S Hagege, WC Carter. \[OpenCurlyDoubleQuote]New Software Tools for \
the Calculation and Display of Isolated and Attached Interfacial-Energy \
Minimizing Particle Shapes.\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science ",
  FontSlant->"Italic"],
 StyleBox["47",
  FontWeight->"Bold"],
 ":8290-8302 (2012)."
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518445876710065*^9, 3.518446348026244*^9}, {
   3.518446379223979*^9, 3.518446401099177*^9}, {3.5184464359577103`*^9, 
   3.518446632578114*^9}, {3.518446756193521*^9, 3.5184467589283447`*^9}, {
   3.5184469460781116`*^9, 3.518447099491424*^9}, 3.518447131263651*^9, {
   3.518447166390895*^9, 3.518447173488578*^9}, {3.518447237741197*^9, 
   3.51844745084159*^9}, {3.518447516538354*^9, 3.518447795671555*^9}, {
   3.5184478456057158`*^9, 3.51844789611029*^9}, {3.5184479551926126`*^9, 
   3.518448095307148*^9}, {3.5184481271659803`*^9, 3.5184483896193953`*^9}, 
   3.518448419649967*^9, 3.5184501348076067`*^9, {3.51851953441136*^9, 
   3.51851953481138*^9}, {3.519060115114377*^9, 3.519060140527372*^9}, {
   3.5466913362789783`*^9, 3.54669138420216*^9}, {3.547216144403792*^9, 
   3.547216147929626*^9}, {3.548494335760203*^9, 3.548494383222123*^9}, {
   3.5615394619920187`*^9, 3.5615394735039043`*^9}}],

Cell["Using Wulffmaker", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450018332622*^9, 3.51845002195302*^9}, {
   3.5184501026251698`*^9, 3.518450102985705*^9}, 3.5184501348080883`*^9, {
   3.547216160812276*^9, 3.547216164596195*^9}}],

Cell[TextData[{
 "When you open the code, you will probably be asked whether the enable \
dynamic updating. Click \[OpenCurlyDoubleQuote]yes.\[CloseCurlyDoubleQuote] \
If the code does not automatically evaluate, go to the navigation bar for the \
CDF player or ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " (whichever you are using) and select Evaluation -> Evaluate Notebook. You \
can also ensure that dynamic updating is enabled by going to Evaluation -> \
Dynamic Updating Enabled. There will be a check-mark next to the item if \
dynamic updating is turned on. \n\nDuring the evaluation, you will see some \
blue brackets at the right of the screen become bold and black. Do not try to \
change any variables or begin new calculations while the code is evaluating - \
this may cause ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " to either abort the calculation or freeze. If it does stop working, you \
can abort all evaluations by selecting Evaluation -> Abort Evaluation. To get \
a fresh start, select Evaluation -> Quit Kernel -> Quit. This will reset ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 "\[CloseCurlyQuote]s memory. To use the code again, select Evaluation -> \
Evaluate Notebook. \n\nThe controls for lattice symmetry, point group, number \
of facet families used, and plotting options appear above the Wulff shape. \
The default lattice symmetry is Cubic, the default point group is \
\[OpenCurlyDoubleQuote]m",
 Cell[BoxData[
  FormBox[
   OverscriptBox["3", "_"], TraditionalForm]]],
 "m\[CloseCurlyDoubleQuote], and the default number of facet families is 3. \
Only the point groups consistent with the selected lattice symmetry are \
available in the point group menu. The point groups are identified by their \
International symbol, in abbreviated form. Changing these values will resent \
the controls for facet family, \[Gamma], and color, so it is best to select \
these variables first before moving on to each specific facet family, \
\[Gamma], and color.\n\nThe controls for facet family, \[Gamma], and color \
appear to the left of the Wulff shape. By default, Wulffmaker starts with 3 \
facet families: {0, 0, 1}, {1, 1, 1}, and {1, 1, 0}, and when more facet \
families are added, the default values are random {h k l}\[CloseCurlyQuote]s. \
You are free to select whatever {h k l}\[CloseCurlyQuote]s you like, and may \
change any of the \[Gamma]\[CloseCurlyQuote]s and colors. By expanding the \
slider controls for \[Gamma] (this is done by clicking on the \
\[OpenCurlyDoubleQuote]+\[OpenCurlyDoubleQuote] symbol next to the current \
value of \[Gamma], which defaults to 1), you can continuously change the \
surface energy of a plane as an anamation. You can also manually type in the \
desired \[Gamma] in the input field, even if it is outside the range of the \
slider.\n\nThe controls for the Winterbottom-portion of the calcuation ar to \
the right of the image. The ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["\[Gamma]", "SV"], "-", 
     SubscriptBox["\[Gamma]", "SP"]}], ")"}], TraditionalForm]]],
 " slider sets the distance from the \[Gamma]=0 point in the Wulff shape to \
the substrate. The orientation of the substrate is the plane in the particle \
reference frame that would be parallel to the substrate. \
\[OpenCurlyDoubleQuote]Show data\[CloseCurlyDoubleQuote] displays the \
effective wetting angle \[Theta] (measured as the interior angle between the \
particle-vapor interface and the particle-substrate interface, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["A", "contact"], TraditionalForm]]],
 " is the area of contact between the particle and the substrate, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["V", "particle"], TraditionalForm]]],
 " is the volume of the particle, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Gamma]", "PV"], TraditionalForm]]],
 " is the effecive particle-vapor surface energy.\n\t\nThe crystallographic \
controls (a, b, c) and (\[Alpha], \[Beta], \[Gamma]) also appear to the right \
of the image. Only the crystallographic controls that are \
\[OpenCurlyDoubleQuote]free variables\[CloseCurlyDoubleQuote] under the \
selected lattice symmetry are available. The axes default to having length 1 \
and the angles default to 90 degrees, but can be freely changed. For ay \
symmetry other than cubic, selecting these variables is essential to \
representing the Wulff shape correctly.\n\nYou may modify the source code, \
but we suggest that modified vesions be saved with a different name so that \
you can always revert to the original. Example modifications include changing \
the default {h k l} values, changing the types of controls available on \
Wulffmaker, or changing default colors. \n\nIf the shape specified by the \
facet families and point symmetry is not a closed volume, Wulffmaker will \
return \[OpenCurlyDoubleQuote]$Aborted\[CloseCurlyDoubleQuote] or an error \
(indicated by the plot area turning pink and red text below the user \
interface). By adding more facet families, one can find a closed shape. "
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450032818315*^9, 3.518450046797674*^9}, 
   3.518450134808251*^9, {3.5185206706940403`*^9, 3.518520684749442*^9}, {
   3.5185207221890907`*^9, 3.518520741580729*^9}, {3.518520884444277*^9, 
   3.5185209072772007`*^9}, {3.547216171973255*^9, 3.547216280158394*^9}, {
   3.547216394461073*^9, 3.547216621275281*^9}, {3.547216710074752*^9, 
   3.5472167220201187`*^9}, {3.548494437941951*^9, 3.5484945166483717`*^9}, 
   3.551118721942758*^9, {3.5511187568609*^9, 3.551119068734426*^9}}],

Cell["Possible Issues", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.51844717796574*^9, 3.518447188328124*^9}, 
   3.518450134808395*^9, {3.548494621513682*^9, 3.548494623918316*^9}}],

Cell["\<\
If the lattice symmetry is changed, the point group does not automatically \
switch to an allowed point group in the new lattice symmetry. As a result, \
the shape displayed immediately after a change to a new lattice symmetry will \
be wrong, or may even return an error (indicated by the graphics field \
turning pink). To display the correct shape, the user must select a point \
group from the menu. Wulffmaker should recover once a compatible point group \
is chosen.

Important: Occasionally, a shape calculated by Wulffmaker will have holes in \
the surface, and will not look right. Or, the contact area will say zero \
(because the bottom surface of the crystal appears as a hole). This is \
because the value of the variable \[OpenCurlyDoubleQuote]sensitivity\
\[CloseCurlyDoubleQuote] is too small. \[OpenCurlyDoubleQuote]Sensitivity\
\[CloseCurlyDoubleQuote] determines the trade-off between speed and how \
carefully Wulffmaker looks for vertices on the equilibrum shape. Under most \
circumstances, a sensitivity in the range 16-20 is sufficient. Try increasing \
by ~5 or 10 at a a time until the holes disappear. Opperating with an \
unnecissarily high sensitivity does not make the calculation more accurate, \
it only makes it slower. Use the smallest sensitivity that returns a shape \
without visable holes.

If too many facet families are included (>~20, depending on how powerful your \
computer is), the calculation may abort, even without an apparent error. \
Future versions should correct this issue.

If the calculation is taking too long, you can abort the calculation by \
selecting Evaluation -> Abort Evaluation. To re-start, re-evaluate the code \
by selecting Evaluation -> Evaluate Notebook.

If one or both of the Wulff shapes are non-cubic in symmetry, a common \
mistake is not inputting the relative lengths of the crystallographic axes, \
(a, b, c). These values determine the conversion from Miller indices to \
cartesian coordinates.\
\>", "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518446836233048*^9, 3.518446904138329*^9}, {
   3.5184469399917383`*^9, 3.518446941700807*^9}, 3.518447131263824*^9, {
   3.5184471916875343`*^9, 3.518447193886733*^9}, {3.518447460447277*^9, 
   3.518447491015839*^9}, 3.518448421687047*^9, {3.5184486955227823`*^9, 
   3.51844887534451*^9}, {3.518450069120241*^9, 3.518450096356513*^9}, {
   3.546691398747869*^9, 3.5466914516713943`*^9}, {3.547216105813833*^9, 
   3.547216122254467*^9}, {3.547216745884967*^9, 3.54721674985877*^9}, {
   3.5484945494685698`*^9, 3.5484945863008204`*^9}, {3.549363785313493*^9, 
   3.549363786352255*^9}, {3.5511190944909067`*^9, 3.551119138886952*^9}, {
   3.55277677238026*^9, 3.552776808484552*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Source code", "Section",
 CellChangeTimes->{{3.518283671960793*^9, 3.518283679285681*^9}, {
   3.518445688293679*^9, 3.518445689494059*^9}, 3.541756322015625*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"(*", " ", 
    RowBox[{
    "Adjust", " ", "the", " ", "default", " ", "display", " ", "here"}], " ", 
    "*)"}],
   FontSize->16], " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"in", " ", "the", " ", "three", " ", "functions", " ", "below"}], 
    ",", " ", 
    RowBox[{"i", " ", "is", " ", "the", " ", 
     SuperscriptBox["i", "th"], " ", "facet", " ", "family"}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"1", " ", "refers", " ", "to", " ", 
      StyleBox["h",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{"j", " ", "=", " ", 
     RowBox[{"2", " ", "refers", " ", "to", " ", 
      StyleBox["k",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"3", " ", "refers", " ", "to", " ", 
      RowBox[{
       StyleBox["l",
        FontSlant->"Italic"], "."}]}]}]}], " ", "*)"}], " ", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "if", " ", "you", " ", "want", " ", "to", " ", "modify", " ", "the", " ", 
     "default", " ", 
     RowBox[{"(", 
      RowBox[{"h", " ", "k", " ", "l"}], ")"}], " ", "values"}], ",", " ", 
    RowBox[{"do", " ", "it", " ", "with", " ", 
     RowBox[{"pickIndex", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"pickIndex", "[", 
     RowBox[{"i_", ",", "j_"}], "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["h", "1"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["k", "1"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["l", "1"], " ", "="}], " ", "*)"}], "  ", "1", ",", 
        "True", ",", "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["h", "2"], " ", "="}], " ", "*)"}], " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "1", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "2", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "5"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "2", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "1", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "6"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", "2", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "2", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "1", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", "True", ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"RandomInteger", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "10"}], ",", "10"}], "}"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "display", " ", "colors", " ", 
     "with", " ", "pickColor"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickColor", "[", "i_", "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Magenta"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Yellow"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Cyan"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Lighter", "@", "Green"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "5"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Blue"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "6"}], ",", "\[IndentingNewLine]", "Orange", 
      ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
      RowBox[{"Hue", "[", 
       RowBox[{
        RowBox[{"RandomReal", "[", "]"}], ",", "1", ",", 
        RowBox[{"2", "/", "3"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "surface", " ", "energy", " ", 
     "values", " ", "with", " ", "pickGamma"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickGamma", "[", "i_", "]"}], " ", ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", "\[IndentingNewLine]", 
      "1", ",", " ", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "2"}], ",", "\[IndentingNewLine]", 
      "1.07", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "3"}], ",", "\[IndentingNewLine]", 
      "1.03", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "4"}], ",", "\[IndentingNewLine]", 
      "1.02", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "5"}], ",", "\[IndentingNewLine]", 
      "1.06", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "6"}], ",", "\[IndentingNewLine]", 
      "1.2", ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
      "1"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"modify", " ", "the", " ", "deafult", " ", "symmetry"}], ",", 
     " ", "n", ",", " ", "opacity", ",", " ", 
     RowBox[{
     "whether", " ", "to", " ", "show", " ", "crystallographic", " ", 
      "axes"}], ",", " ", 
     RowBox[{"the", " ", "zone", " ", "axis"}], ",", " ", 
     RowBox[{"the", " ", "vertical", " ", "direction"}], ",", " ", 
     RowBox[{"and", " ", "sensitivity"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultLattice", " ", "=", " ", "\"\<Cubic\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defaultPointGroup", " ", "=", " ", 
     "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultn", " ", "=", " ", "3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultOpacity", " ", "=", " ", "0.85"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowAxes", " ", "=", " ", "True"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultViewAxis", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "5"}], ",", " ", "1", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultVerticalAxis", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultSensitivity", " ", "=", " ", "18"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"modify", " ", "the", " ", "\"\<Winterbottom\>\"", " ", 
      RowBox[{"variables", ":", " ", 
       RowBox[{"the", " ", "interfacial", " ", "energy"}]}]}], ",", " ", 
     RowBox[{"i", ".", "e", "."}], ",", " ", 
     RowBox[{
      RowBox[{
      "the", " ", "distance", " ", "from", " ", "the", " ", "center", " ", 
       "of", " ", "the", " ", "particle", " ", "that", " ", "it", " ", "is", 
       " ", "cut"}], ";", " ", 
      RowBox[{"the", " ", "orientation", " ", "of", " ", "the", " ", 
       RowBox[{"substrate", "/", "plane"}], " ", "through", " ", "which", " ",
        "the", " ", "particle", " ", "is", " ", "cut"}], ";", " ", 
      RowBox[{
      "the", " ", "color", " ", "of", " ", "the", " ", "cut", " ", 
       "surface"}], ";", " ", 
      RowBox[{
      "whether", " ", "to", " ", "display", " ", "the", " ", "substrate", " ",
        "plane"}], ";", " ", 
      RowBox[{
      "and", " ", "whether", " ", "to", " ", "display", " ", "energetic", " ",
        "information"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultInterface", " ", "=", " ", "0."}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultSubstrateOrientation", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0", ",", " ", 
       RowBox[{"-", "1"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultSubstColor", " ", "=", " ", "Gray"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowSubst", " ", "=", " ", "True"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowData", " ", "=", " ", "True"}], ";"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.541759304729084*^9, 3.541759782895699*^9}, {
   3.5417602453203077`*^9, 3.5417602457220573`*^9}, {3.542373801515258*^9, 
   3.542373857789981*^9}, {3.542375457718124*^9, 3.542375497725568*^9}, {
   3.581595790372986*^9, 3.581595821647859*^9}, {3.5977702610662413`*^9, 
   3.597770271266765*^9}, {3.5977703024697247`*^9, 3.597770339146109*^9}, {
   3.597770372505287*^9, 3.59777042749291*^9}, {3.597771270973213*^9, 
   3.597771298341922*^9}, {3.597771556538446*^9, 3.597771597867695*^9}, {
   3.597771771659875*^9, 3.597771805677657*^9}, 3.597827487916157*^9, {
   3.597828041978558*^9, 3.597828075881342*^9}, {3.597828107235208*^9, 
   3.597828142286536*^9}, {3.597828208971055*^9, 3.597828314546261*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "cell", " ", "contols", " ", "the", " ", "space", " ", "and", 
    " ", "point", " ", 
    RowBox[{"symmetries", ".", " ", "It"}], " ", "also", " ", "determines", 
    " ", "what", " ", "is", " ", "displayed", " ", "in", " ", "The", " ", 
    "Wulffenator", " ", 
    RowBox[{"GUI", "."}]}], " ", "*)"}], "\[IndentingNewLine]", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "this", " ", "is", " ", "a", " ", "list", " ", "of", " ", "the", " ", 
     "minimum", " ", "symmetry", " ", "operations", " ", "required", " ", 
     "to", " ", "define", " ", "the", " ", "32", " ", "crystallographic", " ",
      "point", " ", 
     RowBox[{"groups", ".", " ", "you"}], " ", "may", " ", "add", " ", 
     "symmetries", " ", "here", " ", "if", " ", "you", " ", "want", " ", 
     "non"}], "-", 
    RowBox[{"crystallographic", " ", 
     RowBox[{"ones", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"g1", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"IdentityMatrix", "[", "3", "]"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g1bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", "0"}], "}"}], "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g222", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g422", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4mm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar2m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g32", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6sm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g622", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6mm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6barm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g23", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g432", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "these", " ", "are", " ", "the", " ", "space", " ", "group", " ", 
     "options", " ", "displayed", " ", "in", " ", "the", " ", "gui", " ", 
     "above"}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"symList", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Cubic\>\"", ",", " ", "\"\<Hexagonal\>\"", ",", " ", 
       "\"\<Tetragonal\>\"", ",", " ", "\"\<Orthorhombic\>\"", ",", " ", 
       "\"\<Monoclinic\>\"", ",", " ", "\"\<Triclinic\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "these", " ", "link", " ", "the", " ", "text", " ", "symbol", " ", "for", 
     " ", "a", " ", "space", " ", "group", " ", "to", " ", "the", " ", 
     "symmetry", " ", "operations"}], "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g1", ",", " ", "g1bar"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Triclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<1\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<1\>\"", "]"}], " ", "=", " ", 
     "g1"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g1bar"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g2", ",", " ", "gm", ",", " ", "g2sm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Monoclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{"\"\<2\>\"", ",", " ", "\"\<m\>\"", ",", " ", "\"\<2/m\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2\>\"", "]"}], " ", "=", " ", 
     "g2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<m\>\"", "]"}], " ", "=", " ", 
     "gm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2/m\>\"", "]"}], " ", "=", " ", 
     "g2sm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g222", ",", " ", "gmm2", ",", " ", "gmmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Orthorhombic\>\"", "]"}], "=", "   ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<222\>\"", ",", " ", "\"\<mm2\>\"", ",", " ", "\"\<mmm\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<222\>\"", "]"}], " ", "=", " ", 
     "g222"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mm2\>\"", "]"}], " ", "=", " ", 
     "gmm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mmm\>\"", "]"}], " ", "=", " ", 
     "gmmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g4", ",", " ", "g4bar", ",", " ", "g4sm", ",", " ", "g422", ",", " ", 
       "g4mm", ",", " ", "g4bar2m", ",", " ", "g4smmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Tetragonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<4\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
       ",", " ", "\"\<4/m\>\"", ",", " ", "\"\<422\>\"", ",", " ", 
       "\"\<4mm\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"", ",", " ", 
       "\"\<4/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4\>\"", "]"}], " ", "=", " ", 
     "g4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g4bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/m\>\"", "]"}], " ", "=", " ", 
     "g4sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<422\>\"", "]"}], " ", "=", " ", 
     "g422"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4mm\>\"", "]"}], " ", "=", " ", 
     "g4mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"",
       "]"}], " ", "=", " ", "g4bar2m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/mmm\>\"", "]"}], " ", "=", " ", 
     "g4smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g3", ",", " ", "g3bar", ",", " ", "g32", ",", " ", "g3m", ",", " ", 
       "g3barm", ",", " ", "g6", ",", " ", "g6bar", ",", " ", "g6sm", ",", 
       " ", "g622", ",", " ", "g6mm", ",", " ", "g6barm2", ",", " ", 
       "g6smmm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Hexagonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<3\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<32\>\"", ",", " ", "\"\<3m\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", ",", " ", "\"\<6\>\"", 
       ",", " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", ",", " ", 
       "\"\<6/m\>\"", ",", " ", "\"\<622\>\"", ",", " ", "\"\<6mm\>\"", ",", 
       " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"", ",", " ", 
       "\"\<6/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3\>\"", "]"}], " ", "=", " ", 
     "g3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<32\>\"", "]"}], " ", "=", " ", 
     "g32"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3m\>\"", "]"}], " ", "=", " ", 
     "g3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", 
      "]"}], " ", "=", " ", "g3barm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6\>\"", "]"}], " ", "=", " ", 
     "g6"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g6bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/m\>\"", "]"}], " ", "=", " ", 
     "g6sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<622\>\"", "]"}], " ", "=", " ", 
     "g622"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6mm\>\"", "]"}], " ", "=", " ", 
     "g6mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"",
       "]"}], " ", "=", " ", "g6barm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/mmm\>\"", "]"}], " ", "=", " ", 
     "g6smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g23", ",", " ", "gm3bar", ",", " ", "g432", ",", " ", "g4bar3m", ",", 
       " ", "gm3barm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Cubic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<23\>\"", ",", " ", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<432\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"", ",", " ", 
       "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<Cubic\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<23\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "gm3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<432\>\"", "]"}], " ", "=", " ", 
     "g432"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"",
       "]"}], " ", "=", " ", "g4bar3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"",
       "]"}], " ", "=", " ", "gm3barm"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"atext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<a\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"btext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<b\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ctext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<c\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Alpha]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Alpha]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Beta]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Beta]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Gamma]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "these", " ", "determine", " ", "what", " ", "space", " ", "group", " ", 
     "parameters", " ", "are", " ", "displayed", " ", "in", " ", "The", " ", 
     "Wulffenator", " ", 
     RowBox[{"gui", "."}]}], "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tricliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Alpha]", ",", " ", "90", ",", "\[Alpha]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Gamma]", ",", " ", "90", ",", "\[Gamma]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "\[Alpha]", ",", " ", 
      "\[Beta]", ",", " ", "\[Gamma]"}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"monocliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "\[Beta]", 
      ",", " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"orthorhombiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tetragonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hexagonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "120"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"cubiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], "]"}]}],
     ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "a", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"whichcontrols", "[", "sym_", "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalcontrols", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubiccontrols", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalcontrols", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombiccontrols", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monocliniccontrols", "[", "sym", "]"}], ",", " ", 
              RowBox[{"tricliniccontrols", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"geomgen", "[", "sym_", "]"}], " ", ":=", "  ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalconstants", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubicconstants", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalconstants", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombicconstants", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monoclinicconstants", "[", "sym", "]"}], ",", " ", 
              RowBox[{"triclinicconstants", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", "\"\< h\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", "\"\< k\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", "\"\< l\>\""}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<h\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], " ", 
    ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<k\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<l\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";"}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"findarea", "[", "vertices_", "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"trianglify", ",", " ", "areas", ",", " ", "totalarea"}], 
       "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"trianglify", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", "1", "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", "i", "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", 
                RowBox[{"i", "+", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", 
                RowBox[{"i", "+", "1"}], "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "2", ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", "vertices", "]"}], "-", "1"}]}], "}"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"areas", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"0.25", " ", 
           RowBox[{"Sqrt", "[", 
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "2"]}], ")"}], 
              "2"], " ", "-", " ", 
             RowBox[{"2", " ", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "4"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "4"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "4"]}], 
               ")"}]}]}], "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "trianglify", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"totalarea", " ", "=", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{"areas", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "areas", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "totalarea"}]}], "\[IndentingNewLine]", "]"}]}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"outsideWulffCompiled", " ", "=", " ", "\[IndentingNewLine]", 
     RowBox[{"Compile", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"baseV", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"testV", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "1", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "2", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], " ", "+", "  ", 
         RowBox[{
          RowBox[{"baseV", "[", 
           RowBox[{"[", "3", "]"}], "]"}], " ", 
          RowBox[{"testV", "[", 
           RowBox[{"[", "3", "]"}], "]"}]}]}], "  ", ">", " ", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           SuperscriptBox["10", 
            RowBox[{"-", "9."}]]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], " ", "+", " ", 
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "^", "2"}], " ", "+", 
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "3", "]"}], "]"}], "^", "2"}]}], " ", ")"}]}]}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"neighborQ", "[", 
      RowBox[{"id_", ",", " ", "glist_", ",", " ", "sensitivity_"}], "]"}], 
     " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "dots", ",", " ", "sorted", ",", " ", "neighbors", ",", " ", "fin"}], 
        "}"}], ",", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dots", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"glist", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
              RowBox[{"Normalize", "[", 
               RowBox[{"glist", "[", 
                RowBox[{"[", 
                 RowBox[{"id", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
             " ", "i"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "glist", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"sorted", " ", "=", " ", 
         RowBox[{"Sort", "[", 
          RowBox[{"dots", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", ">", " ", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"neighbors", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"sorted", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Min", "[", 
              RowBox[{"sensitivity", ",", " ", 
               RowBox[{"Length", "[", "glist", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fin", " ", "=", " ", 
         RowBox[{"Select", "[", 
          RowBox[{"neighbors", ",", " ", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"SameQ", "[", 
              RowBox[{"#", ",", " ", "id"}], "]"}]}], " ", "&"}]}], 
          "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "findvert", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"findvert", " ", "=", 
     RowBox[{"Compile", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "_Real", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Block", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"denom", "=", 
           RowBox[{
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
            "+", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
            "+", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}], 
            "-", 
            RowBox[{
             RowBox[{
             "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
             RowBox[{
             "c", "\[LeftDoubleBracket]", "3", 
              "\[RightDoubleBracket]"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Abs", "[", "denom", "]"}], " ", "<", " ", 
            ".000000000001"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"1000000.0", ",", "1000000.", ",", "1000000."}], "}"}], 
           ",", " ", "\[IndentingNewLine]", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", 
                   "\[RightDoubleBracket]"}]}], " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"]}]}], ")"}], "/", "denom"}]}], "\[IndentingNewLine]", 
            "}"}]}], "]"}]}], "\[IndentingNewLine]", "]"}]}], 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"makeFacetsWinter", "[", 
     RowBox[{"newGs_", ",", " ", "colz_", ",", " ", "sensitivity_"}], "]"}], 
    " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "neighbors", ",", " ", "verts", ",", " ", "verts2", ",", " ", 
        "vertTest", ",", " ", "rotMats", ",", " ", "rotatedVerts", ",", " ", 
        "shifts", ",", " ", "centeredVerts", ",", " ", "sortedVerts", ",", 
        " ", "finVerts", ",", " ", "facets", ",", " ", "vertParents"}], "}"}],
       ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"neighbors", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"neighborQ", "[", 
           RowBox[{"i", ",", " ", "newGs", ",", " ", "sensitivity"}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"verts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"findvert", "[", 
             RowBox[{
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"neighbors", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
                 "1"}], "]"}], "]"}], ",", " ", 
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"neighbors", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "k"}], "]"}], "]"}], ",", " ", 
                 "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"newGs", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "}"}]}], "}"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}], "-", "1"}]}], "}"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"k", ",", " ", 
            RowBox[{"j", "+", "1"}], ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"neighbors", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"verts2", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"verts", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", " ", "1"}], "]"}], ",", 
            " ", 
            RowBox[{
             RowBox[{"VectorQ", "[", 
              RowBox[{"#", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "&"}]}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"vertTest", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"MemberQ", "[", 
                 RowBox[{
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"outsideWulffCompiled", "[", 
                    RowBox[{
                    RowBox[{"newGs", "[", 
                    RowBox[{"[", 
                    RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"verts2", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k", ",", " ", "1"}], "]"}], 
                    "]"}]}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}], 
                  ",", " ", "True"}], "]"}], ",", " ", "Null", ",", " ", 
                RowBox[{"verts2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "]"}], ",", 
              "  ", 
              RowBox[{"{", 
               RowBox[{"k", ",", " ", 
                RowBox[{"Length", "[", 
                 RowBox[{"verts2", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"!", 
              RowBox[{"SameQ", "[", 
               RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "verts2", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"rotMats", " ", "=", " ", 
        RowBox[{"Chop", "@", 
         RowBox[{"Table", "[", " ", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"newGs", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "/", 
               RowBox[{"Norm", "[", 
                RowBox[{"newGs", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", 
              "\[Equal]", " ", 
              RowBox[{"-", "1"}]}], ",", " ", 
             RowBox[{"RotationMatrix", "[", 
              RowBox[{"Pi", ",", " ", 
               RowBox[{"{", 
                RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], 
             ",", "  ", 
             RowBox[{"RotationMatrix", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"newGs", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}], 
              "]"}]}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}]}], ";",
        "\[IndentingNewLine]", 
       RowBox[{"rotatedVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"rotMats", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ".", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}]}], 
            ",", " ", "j"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"shifts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Mean", "[", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"rotatedVerts", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j", ",", " ", "1", ",", " ", "1"}], 
                 "]"}], "]"}], ",", " ", 
               RowBox[{"rotatedVerts", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j", ",", " ", "1", ",", " ", "2"}], 
                 "]"}], "]"}], ",", " ", "0"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"j", ",", " ", 
               RowBox[{"Length", "[", 
                RowBox[{"rotatedVerts", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
           "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"centeredVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"rotatedVerts", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], " ",
              "-", " ", 
             RowBox[{"shifts", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
            RowBox[{"rotatedVerts", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}]}], 
           "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"rotatedVerts", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"sortedVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Sort", "[", 
           RowBox[{
            RowBox[{"centeredVerts", "[", 
             RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"ArcTan", "[", 
               RowBox[{
                RowBox[{"#1", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                RowBox[{"#1", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}], " ", 
              ">", " ", 
              RowBox[{"ArcTan", "[", 
               RowBox[{
                RowBox[{"#2", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                RowBox[{"#2", "[", 
                 RowBox[{"[", 
                  RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}]}], " ", 
             "&"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "centeredVerts", "]"}]}], "}"}]}], "]"}]}],
        ";", "\[IndentingNewLine]", 
       RowBox[{"finVerts", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"vertTest", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", 
               RowBox[{"sortedVerts", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
               ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"Sort", "[", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", 
                RowBox[{"sortedVerts", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
                ",", " ", "2"}], "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"facets", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"finVerts", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], ",", 
          " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"vertTest", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}]}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.518971935417313*^9, 3.518971964294887*^9}, {
   3.518972026388856*^9, 3.518972296793899*^9}, 3.54175632203125*^9, {
   3.541758948171887*^9, 3.5417589915069723`*^9}, {3.541759288686508*^9, 
   3.541759299162407*^9}, {3.541759654196686*^9, 3.541759655698884*^9}, {
   3.5417597898719063`*^9, 3.5417598083257513`*^9}, {3.5423760469626093`*^9, 
   3.542376047797927*^9}, {3.5423872075117617`*^9, 3.5423872147347603`*^9}, {
   3.542387245282546*^9, 3.5423873328216763`*^9}, {3.542387390439958*^9, 
   3.542387451856696*^9}, {3.542387582103532*^9, 3.542387592819523*^9}, 
   3.542387683970167*^9, {3.542539920937204*^9, 3.542539921473569*^9}, {
   3.542540008024951*^9, 3.5425400087156677`*^9}, {3.543250632689416*^9, 
   3.543250640559505*^9}, 3.5432506986057*^9, {3.550933116600213*^9, 
   3.550933117499528*^9}, {3.550943091891027*^9, 3.5509431076977053`*^9}, {
   3.550944775213496*^9, 3.55094481488509*^9}, {3.550944863920845*^9, 
   3.550944896850482*^9}, {3.551112263156364*^9, 3.551112283188703*^9}, {
   3.5613016998403187`*^9, 3.561301708202561*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "is", " ", "where", " ", "the", " ", "magic", " ", 
    "happens"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"wulffmakerWinterbottom", "[", 
    RowBox[{"argument_", ",", " ", 
     RowBox[{"opacity_:", "1"}], ",", " ", 
     RowBox[{"showAxes_:", "True"}], ",", " ", "vpr_", ",", " ", "vvr_", ",", 
     " ", "intin_", ",", " ", "dir_", ",", " ", "col_", ",", " ", "showdata_",
      ",", " ", "showsubst_", ",", " ", "sensitiv_"}], "]"}], " ", ":=", " ", 
   
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "norms", ",", " ", "ds", ",", " ", "colors", ",", " ", "symstring", ",",
        " ", "geometry", ",", " ", "sym", ",", " ", "aa", ",", " ", "bb", ",",
        " ", "cc", ",", " ", "\[Alpha]\[Alpha]", ",", " ", "\[Beta]\[Beta]", 
       ",", " ", "\[Gamma]\[Gamma]", ",", " ", "avect", ",", " ", "bvect", 
       ",", " ", "cvect", ",", " ", "cartesian1", ",", " ", "points", ",", 
       " ", "normsxyz", ",", " ", "symop", ",", " ", "dmult", ",", " ", 
       "colz", ",", " ", "gams", ",", " ", "eliminatedQ", ",", " ", 
       "survivingGroups", ",", " ", "newColors", ",", " ", "newGsPre", ",", 
       " ", "newGs", ",", " ", "rotdeg", ",", " ", "rotax", ",", " ", "rot", 
       ",", " ", "int", ",", " ", "rotnorms", ",", " ", "shiftnorms", ",", 
       " ", "wulffnormz", ",", " ", "newGswPre", ",", " ", "newGsw", ",", " ",
        "facetsPre", ",", " ", "facets", ",", " ", "gpv", ",", " ", "totvol", 
       ",", " ", "contactarea", ",", " ", "epi", ",", " ", "wulffshape", ",", 
       " ", "subst", ",", " ", "axes", ",", " ", "plot"}], "}"}], ",", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"norms", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Normalize", "[", 
          RowBox[{"argument", "[", 
           RowBox[{"[", 
            RowBox[{"1", ",", " ", "i"}], "]"}], "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"argument", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"ds", " ", "=", " ", 
       RowBox[{"argument", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"colors", " ", "=", " ", 
       RowBox[{"argument", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"symstring", " ", "=", " ", 
       RowBox[{"argument", "[", 
        RowBox[{"[", "4", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"geometry", " ", "=", " ", 
       RowBox[{"argument", "[", 
        RowBox[{"[", "5", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"sym", " ", "=", " ", 
       RowBox[{"symmetryMatrices", "[", "symstring", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"aa", " ", "=", " ", 
       RowBox[{"geometry", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"bb", " ", "=", " ", 
       RowBox[{"geometry", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"cc", " ", "=", " ", 
       RowBox[{"geometry", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"\[Alpha]\[Alpha]", " ", "=", " ", 
       RowBox[{
        RowBox[{"geometry", "[", 
         RowBox[{"[", "4", "]"}], "]"}], " ", 
        RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"\[Beta]\[Beta]", " ", "=", " ", 
       RowBox[{
        RowBox[{"geometry", "[", 
         RowBox[{"[", "5", "]"}], "]"}], " ", 
        RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"\[Gamma]\[Gamma]", " ", "=", " ", 
       RowBox[{
        RowBox[{"geometry", "[", 
         RowBox[{"[", "6", "]"}], "]"}], " ", 
        RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"avect", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"aa", " ", 
          RowBox[{"Sin", "[", "\[Beta]\[Beta]", "]"}]}], ",", " ", "0", ",", 
         " ", 
         RowBox[{"aa", " ", 
          RowBox[{"Cos", "[", "\[Beta]\[Beta]", "]"}]}]}], "}"}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"bvect", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"bb", " ", 
          RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
          RowBox[{"Cos", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
         RowBox[{"bb", " ", 
          RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
          RowBox[{"Sin", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
         RowBox[{"bb", " ", 
          RowBox[{"Cos", "[", "\[Alpha]\[Alpha]", "]"}]}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"cvect", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "0", ",", " ", "cc"}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"cartesian1", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], " ", "\[Equal]", 
              " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
             RowBox[{"avect", "/", 
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}]}], "]"}], ",", 
           " ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "\[Equal]", 
              " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
             RowBox[{"bvect", "/", 
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}]}], "]"}], ",", 
           " ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "\[Equal]", 
              " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
             RowBox[{"cvect", "/", 
              RowBox[{"norms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}]}], 
          "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"points", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Which", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "  ", "&&",
             " ", 
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
              "avect"}], ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
              "bvect"}], ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", "&&",
             " ", 
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "+", " ", 
              "avect"}], ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], " ", "&&",
             " ", 
            RowBox[{"!", 
             RowBox[{"VectorQ", "[", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect"}], 
             ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "cvect"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "+", "avect"}], 
             ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect"}], 
             ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect"}]}], 
            "}"}], ",", "\[IndentingNewLine]", "True", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"cartesian1", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], "\[IndentingNewLine]", "]"}], 
         ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"normsxyz", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Cross", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"points", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "-", 
            RowBox[{"points", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], ",", " ", 
           RowBox[{
            RowBox[{"points", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "-", 
            RowBox[{"points", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "performing", " ", "symmetry", " ", "operations", " ", "repeatedly", 
         " ", "to", " ", "find", " ", "all", " ", "symmetric", " ", 
         "eqivalents"}], ",", " ", 
        RowBox[{
        "and", " ", "the", " ", "corresponding", " ", "colors", " ", "and", 
         " ", "gamma", " ", "values", " ", "and", " ", "vectors"}]}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"symop", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"FixedPoint", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Simplify", "@", 
             RowBox[{"Union", "[", 
              RowBox[{"Partition", "[", 
               RowBox[{
                RowBox[{"Flatten", "[", 
                 RowBox[{"Table", "[", 
                  RowBox[{
                   RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"sym", ".", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    SuperscriptBox["10", 
                    RowBox[{"-", "10."}]]}], "]"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"Length", "[", "#", "]"}]}], "}"}]}], "]"}], 
                 "]"}], ",", " ", "3"}], "]"}], "]"}]}], " ", "&"}], ",", 
           RowBox[{"sym", ".", 
            RowBox[{"normsxyz", "[", 
             RowBox[{"[", "j", "]"}], "]"}]}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", 
           RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dmult", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"ds", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"symop", "[", 
             RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"colz", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"colors", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"symop", "[", 
             RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"gams", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"dmult", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
          RowBox[{"Normalize", "[", 
           RowBox[{"symop", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"symop", "[", 
             RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "test", " ", "whether", " ", "a", " ", "particular", " ", "facet", 
         " ", 
         RowBox[{"family", "'"}], "s", " ", "gamma", " ", "is", " ", "too", 
         " ", "large", " ", "to", " ", "appear", " ", "on", " ", "the", " ", 
         "wulff", " ", "shape"}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{
          "and", " ", "remove", " ", "them", " ", "from", " ", "the", " ", 
           "list", " ", "of", " ", "facets"}], " ", "&"}], " ", "their", " ", 
         "properties"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"eliminatedQ", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"outsideWulffCompiled", "[", 
          RowBox[{
           RowBox[{"gams", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
           RowBox[{"gams", "[", 
            RowBox[{"[", 
             RowBox[{"k", ",", " ", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"k", ",", " ", 
           RowBox[{"Length", "[", "gams", "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"k", " ", "\[Equal]", " ", "1"}], ",", " ", 
             RowBox[{"Table", "[", 
              RowBox[{"a", ",", " ", 
               RowBox[{"{", 
                RowBox[{"a", ",", " ", "2", ",", " ", 
                 RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",", 
             " ", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"k", " ", "\[Equal]", " ", 
                RowBox[{"Length", "[", "gams", "]"}]}], ",", " ", 
               RowBox[{"Table", "[", 
                RowBox[{"a", ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"a", ",", " ", "1", ",", " ", 
                   RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
               RowBox[{"Join", "[", 
                RowBox[{
                 RowBox[{"Table", "[", 
                  RowBox[{"a", ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"a", ",", " ", 
                    RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
                 RowBox[{"Table", "[", 
                  RowBox[{"a", ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"a", ",", " ", 
                    RowBox[{"k", "+", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}]}], 
                "]"}]}], "]"}]}], "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"gams", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"survivingGroups", " ", "=", " ", 
       RowBox[{"Select", "[", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"MemberQ", "[", 
              RowBox[{
               RowBox[{"Flatten", "[", 
                RowBox[{"eliminatedQ", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
              "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",", " ",
          "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"newColors", " ", "=", " ", 
       RowBox[{"Flatten", "@", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"colz", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "survivingGroups"}], "}"}]}], "]"}]}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"newGsPre", " ", "=", " ", 
       RowBox[{"Flatten", "[", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"gams", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", "i"}], 
            "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "survivingGroups"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"gams", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], ",", 
         " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"newGs", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Join", "[", 
          RowBox[{
           RowBox[{"newGsPre", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "newGsPre", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "rotate", " ", "the", " ", "shape", " ", "so", " ", "that", " ", "the",
         " ", "facet", " ", "in", " ", "contact", " ", "with", " ", "the", 
        " ", "substrate", " ", "is", " ", "aligned", " ", "with", " ", 
        RowBox[{"(", 
         RowBox[{"00", "-", "1"}], ")"}], " ", "in", " ", "the", " ", 
        "global", " ", "reference", " ", "frame"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"rotdeg", " ", "=", " ", 
       RowBox[{"VectorAngle", "[", 
        RowBox[{"dir", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", 
           RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"rotax", " ", "=", " ", 
       RowBox[{"Cross", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", 
           RowBox[{"-", "1"}]}], "}"}], ",", " ", "dir"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"rot", " ", "=", " ", 
       RowBox[{"N", "@", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"dir", " ", "\[Equal]", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", 
             RowBox[{"-", "1"}]}], "}"}]}], ",", " ", 
          RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
          RowBox[{"RotationMatrix", "[", 
           RowBox[{"rotdeg", ",", " ", "rotax"}], "]"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"int", " ", "=", " ", "intin"}], ";", "\[IndentingNewLine]", 
      RowBox[{"rotnorms", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"rot", ".", 
            RowBox[{"newGs", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}], ",", " ", 
           RowBox[{"newGs", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"shiftnorms", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"N", "[", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Norm", "[", 
                RowBox[{"rotnorms", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}], "+", " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"int", " ", "-", " ", "0.001"}], ")"}], " ", 
                RowBox[{"Sin", "[", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "3"}], "]"}], "]"}],
                     " ", "\[LessEqual]", " ", "0"}], ",", " ", 
                    RowBox[{"-", "1"}], ",", " ", "1"}], "]"}], "  ", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "1"}], "]"}], "]"}],
                     ",", " ", "0.001"}], "]"}], " ", "\[Equal]", " ", "0."}],
                     " ", "&&", " ", 
                    RowBox[{
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "0.001"}], "]"}], " ", "\[Equal]", " ", 
                    "0."}]}], ",", "  ", 
                    RowBox[{"Pi", "/", "2"}], ",", " ", 
                    RowBox[{"VectorAngle", "[", 
                    RowBox[{
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "1"}], "]"}], "]"}],
                     ",", " ", 
                    RowBox[{"rotnorms", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "0"}], "}"}]}], "]"}]}], "]"}]}], "]"}]}]}], 
              ")"}], " ", 
             RowBox[{"Normalize", "[", 
              RowBox[{"rotnorms", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "]"}], 
           ",", " ", 
           RowBox[{"rotnorms", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], "}"}], ",", "  ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "rotnorms", "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"wulffnormz", " ", "=", " ", 
       RowBox[{"Join", "[", 
        RowBox[{"shiftnorms", ",", " ", 
         RowBox[{"{", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", " ", "0", ",", " ", 
              RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", "norms", "]"}], "+", "1"}]}], "}"}], 
          "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"newGswPre", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Join", "[", 
          RowBox[{
           RowBox[{"wulffnormz", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "wulffnormz", "]"}]}], "}"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"facetsPre", " ", "=", " ", 
       RowBox[{"makeFacetsWinter", "[", 
        RowBox[{"newGswPre", ",", " ", 
         RowBox[{"Join", "[", 
          RowBox[{"newColors", ",", " ", 
           RowBox[{"{", "col", "}"}]}], "]"}], ",", " ", "sensitiv"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"totvol", " ", "=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "/", "3"}], ")"}], " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{"N", "[", 
           RowBox[{
            RowBox[{"Re", "[", 
             RowBox[{"findarea", "[", 
              RowBox[{"facetsPre", "[", 
               RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], " ", 
            RowBox[{"Norm", "[", 
             RowBox[{"newGswPre", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGswPre", "]"}]}], "}"}]}], "]"}]}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"facets", " ", "=", " ", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"1", "/", "totvol"}], ")"}], 
           RowBox[{"1", "/", "3"}]], " ", "facetsPre"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"newGsw", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"1", "/", "totvol"}], ")"}], 
             RowBox[{"1", "/", "3"}]], " ", 
            RowBox[{"newGswPre", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGswPre", "]"}]}], "}"}]}], "]"}]}], 
        ";"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"facets", " ", "=", " ", "facetsPre"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"newGsw", " ", "=", " ", 
       RowBox[{"Table", "[", " ", 
        RowBox[{
         RowBox[{"newGswPre", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "newGswPre", "]"}]}], "}"}]}], "]"}]}], ";",
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"gpv", " ", "=", " ", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"wnormz", ",", " ", "gammapv"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"wnormz", " ", "=", " ", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"rotnorms", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", 
               RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";",
           "\[IndentingNewLine]", 
          RowBox[{"gammapv", " ", "=", " ", 
           RowBox[{
            RowBox[{"Sort", "[", 
             RowBox[{
              RowBox[{"Select", "[", 
               RowBox[{
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", ">", " ",
                     "0"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "2"]}], ")"}],
                     "/", 
                    RowBox[{"(", 
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ")"}]}]}], 
                    "}"}], ",", " ", "Null"}], "]"}], ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", " ", 
                    RowBox[{"Length", "[", "wnormz", "]"}]}], "}"}]}], "]"}], 
                ",", " ", 
                RowBox[{
                 RowBox[{"!", 
                  RowBox[{"SameQ", "[", 
                   RowBox[{"#", ",", " ", "Null"}], "]"}]}], " ", "&"}]}], 
               "]"}], ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"#1", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], " ", "<", " ", 
                RowBox[{"#2", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], " ", "&"}]}], "]"}], "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", "gammapv"}]}], " ", "\[IndentingNewLine]", 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"contactarea", " ", "=", " ", 
       RowBox[{"findarea", "[", 
        RowBox[{"Last", "[", "facets", "]"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"epi", " ", "=", "  ", 
       RowBox[{"Column", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"\"\<\[Theta] = \>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{"Round", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"ArcCos", "[", 
                    RowBox[{
                    RowBox[{"-", "intin"}], "/", "gpv"}], "]"}], " ", 
                   RowBox[{"180", "/", "Pi"}]}], ",", " ", "0.1"}], "]"}], 
                "]"}], "<>", "\"\<\[Degree]\>\"", "<>", 
               "\"\< = \!\(\*SuperscriptBox[\(cos\), \
\(-1\)]\)(\!\(\*FractionBox[\(\*SubscriptBox[\(\[Gamma]\), \(SP\)] - \
\*SubscriptBox[\(\[Gamma]\), \(SV\)]\), SubscriptBox[\(\[Gamma]\), \
\(PV\)]]\))\>\""}], " ", ",", " ", 
              RowBox[{"FontFamily", " ", "\[Rule]", " ", "\"\<Times\>\""}], 
              ",", " ", 
              RowBox[{"FontSize", " ", "\[Rule]", " ", "18"}]}], "]"}], "]"}],
            ",", " ", 
           RowBox[{"Text", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"\"\<\!\(\*SubscriptBox[\(A\), \(contact\)]\) = \>\"", "<>", 
               RowBox[{"ToString", "[", "contactarea", "]"}]}], ",", " ", 
              RowBox[{"FontFamily", " ", "\[Rule]", " ", "\"\<Times\>\""}], 
              ",", " ", 
              RowBox[{"FontSize", " ", "\[Rule]", " ", "18"}]}], "]"}], "]"}],
            ",", " ", 
           RowBox[{"Text", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{
              "\"\<\!\(\*SubscriptBox[\(V\), \(particle\)]\) = \>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "/", "3"}], ")"}], " ", 
                 RowBox[{"Sum", "[", 
                  RowBox[{
                   RowBox[{"N", "[", 
                    RowBox[{
                    RowBox[{"Re", "[", 
                    RowBox[{"findarea", "[", 
                    RowBox[{"facets", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], " ", 
                    RowBox[{"Norm", "[", 
                    RowBox[{"newGsw", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], 
                    "]"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "newGsw", "]"}]}], "}"}]}], 
                  "]"}]}], "]"}]}], ",", " ", 
              RowBox[{"FontFamily", " ", "\[Rule]", " ", "\"\<Times\>\""}], 
              ",", " ", 
              RowBox[{"FontSize", " ", "\[Rule]", " ", "18"}]}], "]"}], "]"}],
            ",", " ", 
           RowBox[{"Text", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{
              "\"\<\!\(\*SubscriptBox[\(\[Gamma]\), \(PV\)]\) = \>\"", "<>", 
               RowBox[{"ToString", "[", "gpv", "]"}]}], ",", " ", 
              RowBox[{"FontFamily", " ", "\[Rule]", " ", "\"\<Times\>\""}], 
              ",", " ", 
              RowBox[{"FontSize", " ", "\[Rule]", " ", "18"}]}], "]"}], 
            "]"}]}], "}"}], ",", " ", "Center"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"wulffshape", " ", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{"showdata", ",", " ", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "opacity", "]"}], ",", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Join", "[", 
                   RowBox[{"newColors", ",", " ", 
                    RowBox[{"{", "col", "}"}]}], "]"}], "[", 
                  RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                 RowBox[{"Polygon", "[", " ", 
                  RowBox[{"facets", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"i", ",", " ", 
                 RowBox[{"Length", "[", "facets", "]"}]}], "}"}]}], "]"}]}], 
            "}"}], ",", 
           RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", " ", 
           RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
            RowBox[{"10", " ", "vpr"}]}], ",", " ", 
           RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
           RowBox[{"Boxed", "\[Rule]", " ", "False"}], ",", " ", 
           RowBox[{"PlotLabel", " ", "\[Rule]", " ", "epi"}]}], "]"}], ",", 
         " ", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "opacity", "]"}], ",", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Join", "[", 
                   RowBox[{"newColors", ",", " ", 
                    RowBox[{"{", "col", "}"}]}], "]"}], "[", 
                  RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                 RowBox[{"Polygon", "[", 
                  RowBox[{"facets", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"i", ",", " ", 
                 RowBox[{"Length", "[", "facets", "]"}]}], "}"}]}], "]"}]}], 
            "}"}], ",", 
           RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", " ", 
           RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
            RowBox[{"10", " ", "vpr"}]}], ",", " ", 
           RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
           RowBox[{"Boxed", "\[Rule]", " ", "False"}]}], "]"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"subst", " ", "=", " ", 
       RowBox[{"Graphics3D", "[", 
        RowBox[{"{", 
         RowBox[{"col", ",", " ", 
          RowBox[{"Polygon", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"2", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"2", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"2", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"2", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"1", "/", "totvol"}], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ",", " ", 
               RowBox[{"-", "0.001"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"axes", " ", "=", " ", 
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"Graphics3D", "[", 
          RowBox[{"{", 
           RowBox[{"Red", ",", 
            RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", 
                   RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
                 RowBox[{
                  RowBox[{"2", " ", 
                   RowBox[{"rot", ".", "avect"}]}], "-", " ", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0.001"}], "}"}]}]}],
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
         " ", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{"{", 
           RowBox[{"Green", ",", 
            RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", 
                   RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
                 RowBox[{
                  RowBox[{"2", " ", 
                   RowBox[{"rot", ".", "bvect"}]}], " ", "-", " ", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0.001"}], "}"}]}]}],
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
         " ", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", 
            RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", 
                   RowBox[{"-", "0.001"}]}], "}"}], ",", " ", 
                 RowBox[{
                  RowBox[{"2", " ", 
                   RowBox[{"rot", ".", "cvect"}]}], "-", " ", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0.001"}], "}"}]}]}],
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}]}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"plot", " ", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"showAxes", "  ", "&&", " ", "showsubst"}], ",", " ", 
         RowBox[{"Show", "[", 
          RowBox[{"wulffshape", ",", " ", "subst", ",", " ", "axes"}], "]"}], 
         ",", " ", 
         RowBox[{"If", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"!", "showAxes"}], " ", "&&", " ", "showsubst"}], ",", 
           " ", 
           RowBox[{"Show", "[", 
            RowBox[{"wulffshape", ",", " ", "subst"}], "]"}], ",", " ", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"showAxes", " ", "&&", " ", 
              RowBox[{"!", "showsubst"}]}], ",", " ", 
             RowBox[{"Show", "[", 
              RowBox[{"wulffshape", ",", " ", "axes"}], "]"}], ",", " ", 
             "wulffshape"}], "]"}]}], "]"}]}], "]"}]}]}]}], 
    "\[IndentingNewLine]", "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5432451816742563`*^9, 3.5432451836151752`*^9}, {
   3.543245225546329*^9, 3.5432452284186907`*^9}, {3.543245265964106*^9, 
   3.543245317889208*^9}, 3.543245491480563*^9, {3.5432455244054537`*^9, 
   3.543245526130083*^9}, {3.543245589567594*^9, 3.543245735723712*^9}, {
   3.543245964570516*^9, 3.543246003511302*^9}, {3.543246036041671*^9, 
   3.543246054542745*^9}, {3.543246113783403*^9, 3.543246114862705*^9}, {
   3.543246153935676*^9, 3.543246186869339*^9}, {3.543246261581841*^9, 
   3.5432463607536697`*^9}, {3.543246414931663*^9, 3.5432464209160748`*^9}, {
   3.5432464675959263`*^9, 3.543246529035307*^9}, {3.5432468046996603`*^9, 
   3.5432468116029654`*^9}, {3.543246873601194*^9, 3.543246876963785*^9}, 
   3.543247048446396*^9, {3.5432471069815817`*^9, 3.54324715788839*^9}, {
   3.543248506668152*^9, 3.543248512961845*^9}, {3.543248678009777*^9, 
   3.543248752020493*^9}, {3.543248784933415*^9, 3.543249154259507*^9}, {
   3.5432493122191477`*^9, 3.54324934028887*^9}, {3.543249430435977*^9, 
   3.543249530183771*^9}, {3.54324972164717*^9, 3.54324972328479*^9}, {
   3.5432497548651857`*^9, 3.543250234766293*^9}, {3.5432502654537163`*^9, 
   3.5432502708520117`*^9}, {3.543250343062622*^9, 3.543250445984111*^9}, {
   3.5432504789276733`*^9, 3.543250489399125*^9}, {3.5432505581559067`*^9, 
   3.5432505915773077`*^9}, 3.543250769463422*^9, {3.543250839115131*^9, 
   3.543250934415296*^9}, {3.543250968688859*^9, 3.543251111086857*^9}, {
   3.543252114358365*^9, 3.5432522566396217`*^9}, {3.543252300231785*^9, 
   3.543252351022509*^9}, {3.5432523815941467`*^9, 3.543252476489897*^9}, {
   3.543252512399254*^9, 3.543252512875868*^9}, {3.543252571446425*^9, 
   3.5432525758768883`*^9}, {3.543252632799108*^9, 3.5432526906291857`*^9}, {
   3.543252722120309*^9, 3.543252724124363*^9}, {3.543252756672542*^9, 
   3.543252773454021*^9}, {3.543252865228002*^9, 3.5432528676259203`*^9}, {
   3.5432529134586763`*^9, 3.5432529146610107`*^9}, {3.543253732515069*^9, 
   3.543253740693878*^9}, {3.5432537789498873`*^9, 3.54325388438734*^9}, {
   3.5432539659638367`*^9, 3.543253998583229*^9}, {3.543254044038571*^9, 
   3.543254048229645*^9}, {3.5432542877905493`*^9, 3.543254288850683*^9}, {
   3.543254346432941*^9, 3.543254349500366*^9}, {3.543254519897656*^9, 
   3.543254520733075*^9}, {3.54325666377733*^9, 3.543256721022725*^9}, {
   3.543256754348174*^9, 3.543256756493916*^9}, {3.543256855466975*^9, 
   3.543256857425387*^9}, {3.543256898944531*^9, 3.543256908219705*^9}, {
   3.543256983978862*^9, 3.543257006408964*^9}, {3.543257058259678*^9, 
   3.5432570882390547`*^9}, 3.543321354996393*^9, {3.550933086693074*^9, 
   3.550933088208514*^9}, {3.550933135961463*^9, 3.55093321051959*^9}, {
   3.550933242242072*^9, 3.550933242856338*^9}, {3.550933315778377*^9, 
   3.550933354194476*^9}, {3.5509333856895847`*^9, 3.550933399496533*^9}, {
   3.550933434881628*^9, 3.550933444264879*^9}, 3.550933482214314*^9, {
   3.5509335163168917`*^9, 3.550933517202447*^9}, {3.5509337443708763`*^9, 
   3.5509337473632298`*^9}, 3.55093399247547*^9, 3.550934257918044*^9, {
   3.55093470630835*^9, 3.55093470718473*^9}, {3.550936012492352*^9, 
   3.5509361099339533`*^9}, {3.550942111582169*^9, 3.550942137185554*^9}, {
   3.550942202715156*^9, 3.550942482588624*^9}, 3.550942517326352*^9, {
   3.550942869641922*^9, 3.550943046602017*^9}, {3.55094349719025*^9, 
   3.550943503831318*^9}, {3.5509435437036533`*^9, 3.5509436791537857`*^9}, {
   3.550943713295368*^9, 3.550943743149259*^9}, {3.550943791906534*^9, 
   3.550943825625465*^9}, {3.5509438843402443`*^9, 3.550943918739986*^9}, {
   3.550943990643672*^9, 3.550943990898169*^9}, {3.550944048857983*^9, 
   3.550944049894661*^9}, {3.550944099029655*^9, 3.5509440997250137`*^9}, {
   3.550944151861549*^9, 3.550944276743257*^9}, {3.5509443290400267`*^9, 
   3.550944329456171*^9}, {3.550944377028414*^9, 3.5509443772305937`*^9}, {
   3.5509449145892773`*^9, 3.5509449625701933`*^9}, 3.550945011862021*^9, {
   3.550945229695368*^9, 3.5509452309814587`*^9}, 3.55094526428793*^9, {
   3.5509453710563087`*^9, 3.550945487713603*^9}, {3.5509455699805737`*^9, 
   3.550945581997099*^9}, {3.550945639671103*^9, 3.550945660602563*^9}, {
   3.550945693999226*^9, 3.550945694488372*^9}, {3.550946143034285*^9, 
   3.550946215625248*^9}, {3.550946292621022*^9, 3.550946293027377*^9}, {
   3.550947565579571*^9, 3.550947569040248*^9}, 3.550947612153627*^9, {
   3.550947642223981*^9, 3.550947646059906*^9}, {3.5511120669058723`*^9, 
   3.551112089873213*^9}, {3.55111228976849*^9, 3.5511122971916447`*^9}, {
   3.551112575912059*^9, 3.5511126279352407`*^9}, {3.552776677126009*^9, 
   3.55277670852781*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["The Wulffenator", "Section",
 CellChangeTimes->{{3.541759252542234*^9, 3.5417592560275784`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
    "normal", ",", "magnitudes", ",", "colors", ",", "a", ",", "b", ",", "c", 
     ",", "\[Alpha]", ",", "\[Beta]", ",", "\[Gamma]"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"With", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"argument", " ", "=", 
          RowBox[{"{", "\[IndentingNewLine]", " ", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"normal", "[", 
               RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"j", ",", "1", ",", "3"}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"magnitudes", "[", "i", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"colors", "[", "i", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", "currentSymmetry", ",", 
            "\[IndentingNewLine]", 
            RowBox[{"geomgen", "[", "symmetry", "]"}]}], 
           "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{"gc", "=", " ", 
          RowBox[{"whichcontrols", "[", "symmetry", "]"}]}], ",", 
         "\[IndentingNewLine]", " ", 
         RowBox[{"controls", " ", "=", " ", 
          RowBox[{"Sequence", " ", "@@", "\[IndentingNewLine]", 
           RowBox[{"Riffle", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Flatten", "[", "\[IndentingNewLine]", " ", 
              RowBox[{
               RowBox[{"Table", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"Which", "[", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"j", "\[LessEqual]", " ", "3"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"normal", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
                    RowBox[{"pickIndex", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", 
                    RowBox[{"hkl", "[", "j", "]"}]}], "}"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"j", "\[Equal]", " ", "4"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"colors", "[", "i", "]"}], ",", 
                    RowBox[{"pickColor", "[", "i", "]"}], ",", "\"\<\>\""}], 
                    "}"}], ",", 
                    RowBox[{"Hue", "[", "0.1", "]"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"j", "\[GreaterEqual]", " ", "5"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"magnitudes", "[", "i", "]"}], ",", "1", ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], 
                    "}"}], ",", " ", "0.4", ",", " ", "2", ",", 
                    RowBox[{"Appearance", "\[Rule]", " ", "\"\<Labeled\>\""}],
                     ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}]}], "\[IndentingNewLine]", "]"}], ",", 
                 "\[IndentingNewLine]", " ", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{"j", ",", "1", ",", "5"}], "}"}]}], 
                "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
               "\[IndentingNewLine]", "1"}], "]"}], "\[IndentingNewLine]", 
             ",", "Delimiter", ",", "6"}], "\[IndentingNewLine]", "]"}]}]}]}],
         "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", " ", 
       RowBox[{"Manipulate", "[", 
        RowBox[{
         RowBox[{"Manipulate", "[", 
          RowBox[{
           RowBox[{"wulffmakerWinterbottom", "[", " ", 
            RowBox[{
            "argument", ",", "opacity", ",", "showAxes", ",", " ", "vp", ",", 
             " ", "vv", ",", " ", "int", ",", " ", "dir", ",", " ", "col", 
             ",", " ", "showData", ",", " ", "showsubst", ",", " ", 
             "sensitivity"}], "]"}], ",", " ", "controls", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"int", ",", "defaultInterface", ",", 
               RowBox[{"Text", "[", 
                RowBox[{"Style", "[", 
                 RowBox[{
                 "\"\<\!\(\*SubscriptBox[\(\[Gamma]\), \
\(SP\)]\)-\!\(\*SubscriptBox[\(\[Gamma]\), \(SV\)]\)\>\"", ",", "16"}], "]"}],
                 "]"}]}], "}"}], ",", 
             RowBox[{"-", "1"}], ",", "1", ",", " ", 
             RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Right"}]}], 
            "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "dir", ",", " ", "defaultSubstrateOrientation", ",", " ", 
               RowBox[{"Text", "[", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<Orientation of Substrate\>\"", ",", " ", "16"}],
                  "]"}], "]"}]}], "}"}], ",", " ", 
             RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", 
             " ", 
             RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Right"}]}], 
            "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"col", ",", "defaultSubstColor", ",", 
               RowBox[{"Text", "[", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<Substrate Color\>\"", ",", " ", "16"}], "]"}], 
                "]"}]}], "}"}], ",", 
             RowBox[{"Hue", "[", "0.1", "]"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"showsubst", ",", "defaultShowSubst", ",", 
               RowBox[{"Text", "[", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<Show Substrate\>\"", ",", "16"}], "]"}], 
                "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}], ",", " ", 
             RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"showData", ",", "defaultShowData", ",", 
               RowBox[{"Text", "[", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<Show Data\>\"", ",", "16"}], "]"}], "]"}]}], 
              "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}], ",", " ", 
             RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], 
           ",", " ", 
           RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], 
          "]"}], ",", " ", "gc", ",", " ", 
         RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], 
        "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"symmetry", ",", "defaultLattice", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Lattice\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], ",",
        "symList"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"currentSymmetry", ",", "defaultPointGroup", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Point Group\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
       ",", " ", 
       RowBox[{"groupSet", "[", "symmetry", "]"}], ",", 
       RowBox[{"ControlType", "\[Rule]", " ", "PopupMenu"}]}], "}"}], ",", 
     "\[IndentingNewLine]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", ",", "defaultn", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Facet Families\>\"", ",", "16"}], "]"}], "]"}]}], 
        "}"}], ",", 
       RowBox[{"Range", "[", "20", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"opacity", ",", "defaultOpacity", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Opacity\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], ",",
        "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"showAxes", ",", "defaultShowAxes", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Show Axes\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
       ",", 
       RowBox[{"{", 
        RowBox[{"True", ",", "False"}], "}"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vp", ",", " ", "defaultViewAxis", ",", " ", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{
           "\"\<Zone Axis (Relative to Substrate)\>\"", ",", " ", "16"}], 
           "]"}], "]"}]}], "}"}], ",", " ", 
       RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
       RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], ",",
      " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vv", ",", " ", "defaultVerticalAxis", ",", " ", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Vertical Direction (On Screen)\>\"", ",", " ", "16"}],
            "]"}], "]"}]}], "}"}], ",", " ", 
       RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
       RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], ",",
      "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"sensitivity", ",", "defaultSensitivity", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Sensitivity\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
       ",", "10", ",", "50", ",", " ", "1"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"None", ",", "None", ",", 
        RowBox[{"Text", "[", 
         RowBox[{"Style", "[", 
          RowBox[{
          "\"\<Wulffmaker: Winterbottom Shapes\>\"", ",", "Italic", ",", 
           "32"}], "]"}], "]"}]}], "}"}]}], ",", " ", 
     RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}], ",", 
     RowBox[{"BaseStyle", "\[Rule]", " ", "Large"}], ",", " ", 
     RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], "]"}]}],
   "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.59782734307708*^9, 3.5978273449713717`*^9}, {
  3.597827400883338*^9, 3.597827403601181*^9}, {3.597827533917453*^9, 
  3.597827573242991*^9}, {3.597827607295348*^9, 3.597827619771555*^9}, {
  3.597827651116496*^9, 3.597827729880126*^9}, {3.5978277816959753`*^9, 
  3.59782791767172*^9}, {3.5978279644445887`*^9, 3.597828003452566*^9}, {
  3.597828176188938*^9, 3.597828180849163*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`currentSymmetry$$ = 
    "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
    3, $CellContext`opacity$$ = 0.85, $CellContext`sensitivity$$ = 
    18, $CellContext`showAxes$$ = True, $CellContext`symmetry$$ = 
    "Cubic", $CellContext`vp$$ = {-5, 1, 1}, $CellContext`vv$$ = {0, 0, 1}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`symmetry$$], "Cubic", 
       Text[
        Style["Lattice", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry$$], 
       "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
       Text[
        Style["Point Group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry$$]]}, {{
       Hold[$CellContext`n$$], 3, 
       Text[
        Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
       13, 14, 15, 16, 17, 18, 19, 20}}, {{
       Hold[$CellContext`opacity$$], 0.85, 
       Text[
        Style["Opacity", 16]]}, 0, 1}, {{
       Hold[$CellContext`showAxes$$], True, 
       Text[
        Style["Show Axes", 16]]}, {True, False}}, {{
       Hold[$CellContext`vp$$], {-5, 1, 1}, 
       Text[
        Style["Zone Axis (Relative to Substrate)", 16]]}}, {{
       Hold[$CellContext`vv$$], {0, 0, 1}, 
       Text[
        Style["Vertical Direction (On Screen)", 16]]}}, {{
       Hold[$CellContext`sensitivity$$], 18, 
       Text[
        Style["Sensitivity", 16]]}, 10, 50, 1}}, Typeset`size$$ = {
    1523., {319., 330.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`symmetry$12630$$ = 
    0, $CellContext`n$12631$$ = 0, $CellContext`opacity$12632$$ = 
    0, $CellContext`showAxes$12633$$ = 
    False, $CellContext`sensitivity$12634$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`currentSymmetry$$ = 
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
        3, $CellContext`opacity$$ = 0.85, $CellContext`sensitivity$$ = 
        18, $CellContext`showAxes$$ = True, $CellContext`symmetry$$ = 
        "Cubic", $CellContext`vp$$ = {-5, 1, 1}, $CellContext`vv$$ = {0, 0, 
         1}}, "ControllerVariables" :> {
        Hold[$CellContext`symmetry$$, $CellContext`symmetry$12630$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$12631$$, 0], 
        Hold[$CellContext`opacity$$, $CellContext`opacity$12632$$, 0], 
        Hold[$CellContext`showAxes$$, $CellContext`showAxes$12633$$, False], 
        Hold[$CellContext`sensitivity$$, $CellContext`sensitivity$12634$$, 
         0]}, "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> With[{$CellContext`argument$ = {
           Table[
            $CellContext`normal$12628[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes$12628[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], 
           Table[
            $CellContext`colors$12628[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], $CellContext`currentSymmetry$$, 
           $CellContext`geomgen[$CellContext`symmetry$$]}, $CellContext`gc$ = \
$CellContext`whichcontrols[$CellContext`symmetry$$], $CellContext`controls$ = 
         Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal$12628[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Left}, $CellContext`j == 4, {{
                 $CellContext`colors$12628[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i], ""}, 
                Hue[0.1], ControlPlacement -> Left}, $CellContext`j >= 5, {{
                 $CellContext`magnitudes$12628[$CellContext`i], 1, 
                 Text[
                  Style["\[Gamma]", 16]]}, 0.4, 2, Appearance -> "Labeled", 
                ControlPlacement -> Left}], {$CellContext`i, 
               1, $CellContext`n$$}, {$CellContext`j, 1, 5}], 1], Delimiter, 
            6]]}, 
        Manipulate[
         Manipulate[
          $CellContext`wulffmakerWinterbottom[$CellContext`argument$, \
$CellContext`opacity$$, $CellContext`showAxes$$, $CellContext`vp$$, \
$CellContext`vv$$, $CellContext`int, $CellContext`dir, $CellContext`col, \
$CellContext`showData, $CellContext`showsubst, $CellContext`sensitivity$$], \
$CellContext`controls$, {{$CellContext`int, $CellContext`defaultInterface, 
            Text[
             Style[
             "\!\(\*SubscriptBox[\(\[Gamma]\), \
\(SP\)]\)-\!\(\*SubscriptBox[\(\[Gamma]\), \(SV\)]\)", 16]]}, -1, 1, 
           ControlPlacement -> 
           Right}, {{$CellContext`dir, \
$CellContext`defaultSubstrateOrientation, 
            Text[
             Style["Orientation of Substrate", 16]]}, ControlType -> 
           InputField, ControlPlacement -> 
           Right}, {{$CellContext`col, $CellContext`defaultSubstColor, 
            Text[
             Style["Substrate Color", 16]]}, 
           Hue[0.1], ControlPlacement -> 
           Right}, {{$CellContext`showsubst, $CellContext`defaultShowSubst, 
            Text[
             Style["Show Substrate", 16]]}, {True, False}, ControlPlacement -> 
           Right}, {{$CellContext`showData, $CellContext`defaultShowData, 
            Text[
             Style["Show Data", 16]]}, {True, False}, ControlPlacement -> 
           Right}, SynchronousUpdating -> False], $CellContext`gc$, 
         SynchronousUpdating -> False]], 
      "Specifications" :> {{{$CellContext`symmetry$$, "Cubic", 
          Text[
           Style["Lattice", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry$$, 
          "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
          Text[
           Style["Point Group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n$$, 3, 
          Text[
           Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
         12, 13, 14, 15, 16, 17, 18, 19, 20}}, {{$CellContext`opacity$$, 0.85, 
          Text[
           Style["Opacity", 16]]}, 0, 1}, {{$CellContext`showAxes$$, True, 
          Text[
           Style["Show Axes", 16]]}, {
         True, False}}, {{$CellContext`vp$$, {-5, 1, 1}, 
          Text[
           Style["Zone Axis (Relative to Substrate)", 16]]}, ControlType -> 
         InputField, ControlPlacement -> Top}, {{$CellContext`vv$$, {0, 0, 1}, 
          Text[
           Style["Vertical Direction (On Screen)", 16]]}, ControlType -> 
         InputField, ControlPlacement -> 
         Top}, {{$CellContext`sensitivity$$, 18, 
          Text[
           Style["Sensitivity", 16]]}, 10, 50, 1}}, 
      "Options" :> {FrameLabel -> {None, None, 
          Text[
           Style["Wulffmaker: Winterbottom Shapes", Italic, 32]]}, BaseStyle -> 
        Large, SynchronousUpdating -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{4.503599627370496*^15, {495., 505.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`normal$12628] = {Temporary}, 
       Attributes[$CellContext`magnitudes$12628] = {Temporary}, 
       Attributes[$CellContext`colors$12628] = {
        Temporary}, $CellContext`geomgen[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalconstants[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubicconstants[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalconstants[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombicconstants[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monoclinicconstants[$CellContext`sym], 
             $CellContext`triclinicconstants[$CellContext`sym]]]]]], \
$CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 120}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`a, 90, 
         90, 90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 90, 
         90, 90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 
         90, $CellContext`\[Beta], 90}, $CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, \
$CellContext`\[Alpha], $CellContext`\[Beta], $CellContext`\[Gamma]}, \
$CellContext`whichcontrols[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalcontrols[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubiccontrols[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalcontrols[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombiccontrols[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monocliniccontrols[$CellContext`sym], 
             $CellContext`tricliniccontrols[$CellContext`sym]]]]]], \
$CellContext`hexagonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`atext = Text[
         Style["a", 16]], $CellContext`ctext = Text[
         Style["c", 16]], $CellContext`cubiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`btext = Text[
         Style["b", 16]], $CellContext`monocliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> Right}], $CellContext`\[Beta]text = Text[
         Style["\[Beta]", 16]], $CellContext`tricliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Alpha], 90, $CellContext`\[Alpha]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Gamma], 90, $CellContext`\[Gamma]text}, 
          ControlPlacement -> Right}], $CellContext`\[Alpha]text = Text[
         Style["\[Alpha]", 16]], $CellContext`\[Gamma]text = Text[
         Style["\[Gamma]", 16]], $CellContext`pickIndex[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`j, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Which[$CellContext`j == 1, 0, $CellContext`j == 2, 0, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 2, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], $CellContext`i == 3, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 4, 
         Which[$CellContext`j == 1, 2, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], $CellContext`i == 5, 
         Which[$CellContext`j == 1, 2, $CellContext`j == 2, 1, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 6, 
         Which[$CellContext`j == 1, 2, $CellContext`j == 2, 2, $CellContext`j == 
          3, 1, True, 1], True, 
         RandomInteger[{-10, 10}]], $CellContext`hkl[1] = Text[
         Style["h", Italic, 16]], $CellContext`hkl[2] = Text[
         Style["k", Italic, 16]], $CellContext`hkl[3] = Text[
         Style["l", Italic, 16]], $CellContext`pickColor[
         Pattern[$CellContext`i, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Darker[Magenta], $CellContext`i == 2, 
         Darker[Yellow], $CellContext`i == 3, 
         Darker[Cyan], $CellContext`i == 4, 
         Lighter[Green], $CellContext`i == 5, 
         Darker[Blue], $CellContext`i == 6, Orange, True, 
         Hue[
          RandomReal[], 1, 2/3]], $CellContext`wulffmakerWinterbottom[
         Pattern[$CellContext`argument, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`opacity, 
           Blank[]], 1], 
         Optional[
          Pattern[$CellContext`showAxes, 
           Blank[]], True], 
         Pattern[$CellContext`vpr, 
          Blank[]], 
         Pattern[$CellContext`vvr, 
          Blank[]], 
         Pattern[$CellContext`intin, 
          Blank[]], 
         Pattern[$CellContext`dir, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]], 
         Pattern[$CellContext`showdata, 
          Blank[]], 
         Pattern[$CellContext`showsubst, 
          Blank[]], 
         Pattern[$CellContext`sensitiv, 
          Blank[]]] := 
       Module[{$CellContext`norms, $CellContext`ds, $CellContext`colors, \
$CellContext`symstring, $CellContext`geometry, $CellContext`sym, \
$CellContext`aa, $CellContext`bb, $CellContext`cc, $CellContext`\[Alpha]\
\[Alpha], $CellContext`\[Beta]\[Beta], $CellContext`\[Gamma]\[Gamma], \
$CellContext`avect, $CellContext`bvect, $CellContext`cvect, \
$CellContext`cartesian1, $CellContext`points, $CellContext`normsxyz, \
$CellContext`symop, $CellContext`dmult, $CellContext`colz, $CellContext`gams, \
$CellContext`eliminatedQ, $CellContext`survivingGroups, \
$CellContext`newColors, $CellContext`newGsPre, $CellContext`newGs, \
$CellContext`rotdeg, $CellContext`rotax, $CellContext`rot, $CellContext`int, \
$CellContext`rotnorms, $CellContext`shiftnorms, $CellContext`wulffnormz, \
$CellContext`newGswPre, $CellContext`newGsw, $CellContext`facetsPre, \
$CellContext`facets, $CellContext`gpv, $CellContext`totvol, \
$CellContext`contactarea, $CellContext`epi, $CellContext`wulffshape, \
$CellContext`subst, $CellContext`axes, $CellContext`plot}, $CellContext`norms = 
          Table[
            Normalize[
             Part[$CellContext`argument, 1, $CellContext`i]], {$CellContext`i, 
             Length[
              Part[$CellContext`argument, 1]]}]; $CellContext`ds = 
          Part[$CellContext`argument, 2]; $CellContext`colors = 
          Part[$CellContext`argument, 3]; $CellContext`symstring = 
          Part[$CellContext`argument, 4]; $CellContext`geometry = 
          Part[$CellContext`argument, 
            5]; $CellContext`sym = \
$CellContext`symmetryMatrices[$CellContext`symstring]; $CellContext`aa = 
          Part[$CellContext`geometry, 1]; $CellContext`bb = 
          Part[$CellContext`geometry, 2]; $CellContext`cc = 
          Part[$CellContext`geometry, 3]; $CellContext`\[Alpha]\[Alpha] = 
          Part[$CellContext`geometry, 4] (Pi/
            180); $CellContext`\[Beta]\[Beta] = 
          Part[$CellContext`geometry, 5] (Pi/
            180); $CellContext`\[Gamma]\[Gamma] = 
          Part[$CellContext`geometry, 6] (Pi/
            180); $CellContext`avect = {$CellContext`aa 
            Sin[$CellContext`\[Beta]\[Beta]], 0, $CellContext`aa 
            Cos[$CellContext`\[Beta]\[Beta]]}; $CellContext`bvect = \
{($CellContext`bb Sin[$CellContext`\[Alpha]\[Alpha]]) 
            Cos[$CellContext`\[Gamma]\[Gamma]], ($CellContext`bb 
             Sin[$CellContext`\[Alpha]\[Alpha]]) 
            Sin[$CellContext`\[Gamma]\[Gamma]], $CellContext`bb 
            Cos[$CellContext`\[Alpha]\[Alpha]]}; $CellContext`cvect = {
           0, 0, $CellContext`cc}; $CellContext`cartesian1 = Table[{
             If[
             Part[$CellContext`norms, $CellContext`i, 1] == 0, 
              "Inf", $CellContext`avect/
              Part[$CellContext`norms, $CellContext`i, 1]], 
             If[
             Part[$CellContext`norms, $CellContext`i, 2] == 0, 
              "Inf", $CellContext`bvect/
              Part[$CellContext`norms, $CellContext`i, 2]], 
             If[
             Part[$CellContext`norms, $CellContext`i, 3] == 0, 
              "Inf", $CellContext`cvect/
              Part[$CellContext`norms, $CellContext`i, 3]]}, {$CellContext`i, 
             1, 
             Length[$CellContext`norms]}]; $CellContext`points = Table[
            Which[
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`cvect}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 1]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 2]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 3]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect}, True, 
             Part[$CellContext`cartesian1, $CellContext`i]], {$CellContext`i, 
             
             Length[$CellContext`norms]}]; $CellContext`normsxyz = Table[
            Cross[
            Part[$CellContext`points, $CellContext`i, 1] - 
             Part[$CellContext`points, $CellContext`i, 2], 
             Part[$CellContext`points, $CellContext`i, 2] - 
             Part[$CellContext`points, $CellContext`i, 3]], {$CellContext`i, 
             Length[$CellContext`norms]}]; $CellContext`symop = Table[
            FixedPoint[Simplify[
              Union[
               Partition[
                Flatten[
                 Table[
                  Round[
                   Dot[$CellContext`sym, 
                    Part[#, $CellContext`i]], 10^(-10.)], {$CellContext`i, 
                   Length[#]}]], 3]]]& , 
             Dot[$CellContext`sym, 
              Part[$CellContext`normsxyz, $CellContext`j]]], {$CellContext`j, 
             
             Length[$CellContext`normsxyz]}]; $CellContext`dmult = Table[
            Part[$CellContext`ds, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`colz = 
          Table[
            Part[$CellContext`colors, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`gams = 
          Table[Part[$CellContext`dmult, $CellContext`i, $CellContext`j] 
            Normalize[
              
              Part[$CellContext`symop, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 
             Length[$CellContext`normsxyz]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`symop, $CellContext`i]]}]; \
$CellContext`eliminatedQ = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`gams, $CellContext`i, $CellContext`j], 
             Part[$CellContext`gams, $CellContext`k, 1]], {$CellContext`k, 
             Length[$CellContext`gams]}, {$CellContext`i, 
             If[$CellContext`k == 1, 
              Table[$CellContext`a, {$CellContext`a, 2, 
                Length[$CellContext`gams]}], 
              If[$CellContext`k == Length[$CellContext`gams], 
               Table[$CellContext`a, {$CellContext`a, 1, $CellContext`k - 1}], 
               Join[
                Table[$CellContext`a, {$CellContext`a, $CellContext`k - 1}], 
                Table[$CellContext`a, {$CellContext`a, $CellContext`k + 1, 
                  Length[$CellContext`gams]}]]]]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`gams, $CellContext`i]]}]; \
$CellContext`survivingGroups = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminatedQ, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`gams]}], NumericQ]; $CellContext`newColors = 
          Flatten[
            Table[
             
             Part[$CellContext`colz, $CellContext`i], {$CellContext`i, \
$CellContext`survivingGroups}]]; $CellContext`newGsPre = Flatten[
            Table[{
              
              Part[$CellContext`gams, $CellContext`i, $CellContext`j], \
$CellContext`i}, {$CellContext`i, $CellContext`survivingGroups}, \
{$CellContext`j, 
              Length[
               Part[$CellContext`gams, $CellContext`i]]}], 
            1]; $CellContext`newGs = Table[
            Join[
             
             Part[$CellContext`newGsPre, $CellContext`i], {$CellContext`i}], \
{$CellContext`i, 
             Length[$CellContext`newGsPre]}]; $CellContext`rotdeg = 
          VectorAngle[$CellContext`dir, {0, 0, -1}]; $CellContext`rotax = 
          Cross[{0, 0, -1}, $CellContext`dir]; $CellContext`rot = N[
            If[$CellContext`dir == {0, 0, -1}, 
             IdentityMatrix[3], 
             
             RotationMatrix[$CellContext`rotdeg, $CellContext`rotax]]]; \
$CellContext`int = $CellContext`intin; $CellContext`rotnorms = Table[{
             Dot[$CellContext`rot, 
              Part[$CellContext`newGs, $CellContext`i, 1]], 
             Part[$CellContext`newGs, $CellContext`i, 2]}, {$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`shiftnorms = Table[{
             N[(Norm[
                 
                 Part[$CellContext`rotnorms, $CellContext`i, 
                  1]] + ($CellContext`int - 0.001) 
                Sin[If[Part[$CellContext`rotnorms, $CellContext`i, 1, 3] <= 
                    0, -1, 1] If[
                    And[Round[
                    Part[$CellContext`rotnorms, $CellContext`i, 1, 1], 0.001] == 
                    0., Round[
                    Part[$CellContext`rotnorms, $CellContext`i, 1, 2], 0.001] == 
                    0.], Pi/2, 
                    VectorAngle[
                    Part[$CellContext`rotnorms, $CellContext`i, 1], {
                    Part[$CellContext`rotnorms, $CellContext`i, 1, 1], 
                    Part[$CellContext`rotnorms, $CellContext`i, 1, 2], 0}]]]) 
              Normalize[
                Part[$CellContext`rotnorms, $CellContext`i, 1]]], 
             Part[$CellContext`rotnorms, $CellContext`i, 2]}, {$CellContext`i,
              1, 
             Length[$CellContext`rotnorms]}]; $CellContext`wulffnormz = 
          Join[$CellContext`shiftnorms, {{{0, 0, -0.001}, 
              Length[$CellContext`norms] + 1}}]; $CellContext`newGswPre = 
          Table[
            Join[
             
             Part[$CellContext`wulffnormz, $CellContext`i], \
{$CellContext`i}], {$CellContext`i, 
             
             Length[$CellContext`wulffnormz]}]; $CellContext`facetsPre = \
$CellContext`makeFacetsWinter[$CellContext`newGswPre, 
            
            Join[$CellContext`newColors, {$CellContext`col}], \
$CellContext`sensitiv]; $CellContext`totvol = (1/3) Sum[
             N[Re[
                $CellContext`findarea[
                 Part[$CellContext`facetsPre, $CellContext`i]]] Norm[
                
                Part[$CellContext`newGswPre, $CellContext`i, 
                 1]]], {$CellContext`i, 
              
              Length[$CellContext`newGswPre]}]; $CellContext`facets = \
$CellContext`facetsPre; $CellContext`newGsw = Table[
            
            Part[$CellContext`newGswPre, $CellContext`i, 1], {$CellContext`i, 
             
             Length[$CellContext`newGswPre]}]; $CellContext`gpv = 
          Module[{$CellContext`wnormz, $CellContext`gammapv}, \
$CellContext`wnormz = Table[
               
               Part[$CellContext`rotnorms, $CellContext`i, 
                1], {$CellContext`i, 
                Length[$CellContext`newGs]}]; $CellContext`gammapv = Part[
               Sort[
                Select[
                 Table[
                  If[
                  Part[$CellContext`wnormz, $CellContext`i, 3] > 
                   0, {$CellContext`i, (
                    Part[$CellContext`wnormz, $CellContext`i, 1]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 2]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 3]^2)/
                    Part[$CellContext`wnormz, $CellContext`i, 3]}, 
                   Null], {$CellContext`i, 
                   Length[$CellContext`wnormz]}], Not[# === Null]& ], 
                Part[#, 2] < Part[#2, 2]& ], 1, 
               2]; $CellContext`gammapv]; $CellContext`contactarea = \
$CellContext`findarea[
            Last[$CellContext`facets]]; $CellContext`epi = Column[{
             Text[
              Style[
               StringJoin["\[Theta] = ", 
                ToString[
                 Round[
                 ArcCos[-($CellContext`intin/$CellContext`gpv)] (180/Pi), 
                  0.1]], "\[Degree]", 
                " = \!\(\*SuperscriptBox[\(cos\), \
\(-1\)]\)(\!\(\*FractionBox[\(\*SubscriptBox[\(\[Gamma]\), \(SP\)] - \
\*SubscriptBox[\(\[Gamma]\), \(SV\)]\), SubscriptBox[\(\[Gamma]\), \
\(PV\)]]\))"], FontFamily -> "Times", FontSize -> 18]], 
             Text[
              Style[
               StringJoin["\!\(\*SubscriptBox[\(A\), \(contact\)]\) = ", 
                ToString[$CellContext`contactarea]], FontFamily -> "Times", 
               FontSize -> 18]], 
             Text[
              Style[
               StringJoin["\!\(\*SubscriptBox[\(V\), \(particle\)]\) = ", 
                ToString[(1/3) Sum[
                   N[Re[
                    $CellContext`findarea[
                    Part[$CellContext`facets, $CellContext`i]]] Norm[
                    
                    Part[$CellContext`newGsw, $CellContext`i, 
                    1]]], {$CellContext`i, 1, 
                    Length[$CellContext`newGsw]}]]], FontFamily -> "Times", 
               FontSize -> 18]], 
             Text[
              Style[
               StringJoin["\!\(\*SubscriptBox[\(\[Gamma]\), \(PV\)]\) = ", 
                ToString[$CellContext`gpv]], FontFamily -> "Times", FontSize -> 
               18]]}, Center]; $CellContext`wulffshape = 
          If[$CellContext`showdata, 
            Graphics3D[{
              Opacity[$CellContext`opacity], 
              Table[{
                Part[
                 
                 Join[$CellContext`newColors, {$CellContext`col}], \
$CellContext`i], 
                Polygon[
                 Part[$CellContext`facets, $CellContext`i]]}, {$CellContext`i, 
                Length[$CellContext`facets]}]}, Lighting -> "Neutral", 
             ViewPoint -> 10 $CellContext`vpr, 
             ViewVertical -> $CellContext`vvr, ImageSize -> Large, Boxed -> 
             False, PlotLabel -> $CellContext`epi], 
            Graphics3D[{
              Opacity[$CellContext`opacity], 
              Table[{
                Part[
                 
                 Join[$CellContext`newColors, {$CellContext`col}], \
$CellContext`i], 
                Polygon[
                 Part[$CellContext`facets, $CellContext`i]]}, {$CellContext`i, 
                Length[$CellContext`facets]}]}, Lighting -> "Neutral", 
             ViewPoint -> 10 $CellContext`vpr, 
             ViewVertical -> $CellContext`vvr, ImageSize -> Large, Boxed -> 
             False]]; $CellContext`subst = Graphics3D[{$CellContext`col, 
             
             Polygon[{{(-2) (1/$CellContext`totvol)^(1/3), (-2) (
                  1/$CellContext`totvol)^(1/3), -0.001}, {
               2 (1/$CellContext`totvol)^(1/3), (-2) (1/$CellContext`totvol)^(
                  1/3), -0.001}, {
               2 (1/$CellContext`totvol)^(1/3), 
                2 (1/$CellContext`totvol)^(1/3), -0.001}, {(-2) (
                  1/$CellContext`totvol)^(1/3), 
                2 (1/$CellContext`totvol)^(1/
                  3), -0.001}}]}]; $CellContext`axes = Show[
            Graphics3D[{Red, 
              Arrowheads[0.05], 
              Arrow[
               
               Tube[{{0, 0, -0.001}, 
                 2 Dot[$CellContext`rot, $CellContext`avect] - {0, 0, 0.001}},
                 0.025]]}], 
            Graphics3D[{Green, 
              Arrowheads[0.05], 
              Arrow[
               
               Tube[{{0, 0, -0.001}, 
                 2 Dot[$CellContext`rot, $CellContext`bvect] - {0, 0, 0.001}},
                 0.025]]}], 
            Graphics3D[{Blue, 
              Arrowheads[0.05], 
              Arrow[
               
               Tube[{{0, 0, -0.001}, 
                 2 Dot[$CellContext`rot, $CellContext`cvect] - {0, 0, 0.001}},
                 0.025]]}]]; $CellContext`plot = If[
            And[$CellContext`showAxes, $CellContext`showsubst], 
            
            Show[$CellContext`wulffshape, $CellContext`subst, \
$CellContext`axes], 
            If[
             And[
              Not[$CellContext`showAxes], $CellContext`showsubst], 
             Show[$CellContext`wulffshape, $CellContext`subst], 
             If[
              And[$CellContext`showAxes, 
               Not[$CellContext`showsubst]], 
              
              Show[$CellContext`wulffshape, $CellContext`axes], \
$CellContext`wulffshape]]]], $CellContext`symmetryMatrices["1"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["2"] = {{{1,
         0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["222"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["23"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 
        0, 1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "2/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {
        0, 0, -1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "3"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "32"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}, {{1, 0, 0}, {0, -1, 0}, {0, 
         0, -1}}}, $CellContext`symmetryMatrices[
        "3m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["4"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["422"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["432"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{0, 0,
         1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "4/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["4mm"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["4/mmm"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0,
         0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "6"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "622"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, 1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6mm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{-1, 
         0, 0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices[
        "6/mmm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["Cubic"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 
        0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices["m"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["mm2"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["mmm"] = {{{1, 0, 0}, {
        0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 
        0}, {0, -1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {0,
         1, 0}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}, {{0, -1, 0}, {-1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(1\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, -1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, 1/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, 1/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, (-1)/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2"] = {{{1, 0, 0}, {0, 1, 0}, {0,
          0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, (-1)/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`outsideWulffCompiled = 
       CompiledFunction[{8, 9., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {1, 0, 
         0}}, {{1, {2, 0, 0}}, {7., {3, 0, 8}}, {2, {2, 0, 1}}, {
          1.0000000001, {3, 0, 7}}, {3, {2, 0, 2}}}, {1, 3, 9, 0, 
         2}, {{38, 0, 0, 0, 0, 0}, {38, 0, 0, 1, 0, 1}, {38, 0, 0, 2, 0, 2}, {
          38, 1, 0, 0, 0, 3}, {16, 0, 3, 4}, {38, 1, 0, 1, 0, 3}, {16, 1, 3, 
          5}, {38, 1, 0, 2, 0, 3}, {16, 2, 3, 6}, {13, 4, 5, 6, 4}, {40, 56, 
          3, 0, 0, 3, 0, 6}, {40, 56, 3, 0, 1, 3, 0, 3}, {40, 56, 3, 0, 2, 3, 
          0, 5}, {13, 6, 3, 5, 6}, {16, 7, 6, 3}, {27, 7, 8, 4, 3, 0}, {1}}, 
         Function[{$CellContext`baseV, $CellContext`testV}, 
          
          Block[{Compile`$36, Compile`$39, Compile`$42}, 
           Compile`$36 = Part[$CellContext`baseV, 1]; 
           Compile`$39 = Part[$CellContext`baseV, 2]; 
           Compile`$42 = Part[$CellContext`baseV, 3]; 
           Compile`$36 Part[$CellContext`testV, 1] + 
             Compile`$39 Part[$CellContext`testV, 2] + 
             Compile`$42 Part[$CellContext`testV, 3] > 
            1.0000000001 (Compile`$36^2 + Compile`$39^2 + Compile`$42^2)]], 
         Evaluate], Attributes[Compile`$36] = {Temporary}, 
       Attributes[Compile`$39] = {Temporary}, 
       Attributes[Compile`$42] = {Temporary}, $CellContext`makeFacetsWinter[
         Pattern[$CellContext`newGs, 
          Blank[]], 
         Pattern[$CellContext`colz, 
          Blank[]], 
         Pattern[$CellContext`sensitivity, 
          Blank[]]] := 
       Module[{$CellContext`neighbors, $CellContext`verts, \
$CellContext`verts2, $CellContext`vertTest, $CellContext`rotMats, \
$CellContext`rotatedVerts, $CellContext`shifts, $CellContext`centeredVerts, \
$CellContext`sortedVerts, $CellContext`finVerts, $CellContext`facets, \
$CellContext`vertParents}, $CellContext`neighbors = Table[
            $CellContext`neighborQ[$CellContext`i, $CellContext`newGs, \
$CellContext`sensitivity], {$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`verts = Table[{
             $CellContext`findvert[
              Part[$CellContext`newGs, $CellContext`i, 1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
               1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`k], 
               1]], {
              Part[$CellContext`newGs, $CellContext`i, 3], 
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
              
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`k]}}, \
{$CellContext`i, 
             Length[$CellContext`newGs]}, {$CellContext`j, Length[
               Part[$CellContext`neighbors, $CellContext`i]] - 
             1}, {$CellContext`k, $CellContext`j + 1, 
             Length[
              
              Part[$CellContext`neighbors, $CellContext`i]]}]; \
$CellContext`verts2 = Table[
            Select[
             Flatten[
              Part[$CellContext`verts, $CellContext`i], 1], VectorQ[
              Part[#, 1]]& ], {$CellContext`i, 
             Length[$CellContext`verts]}]; $CellContext`vertTest = Table[
            Select[
             Table[
              If[
               MemberQ[
                Table[
                 $CellContext`outsideWulffCompiled[
                  Part[$CellContext`newGs, $CellContext`j, 1], 
                  
                  Part[$CellContext`verts2, $CellContext`i, $CellContext`k, 
                   1]], {$CellContext`j, 
                  Length[$CellContext`newGs]}], True], Null, 
               
               Part[$CellContext`verts2, $CellContext`i, $CellContext`k]], \
{$CellContext`k, 
               Length[
                Part[$CellContext`verts2, $CellContext`i]]}], Not[
             Null === #]& ], {$CellContext`i, 
             Length[$CellContext`verts2]}]; $CellContext`rotMats = Chop[
            Table[
             If[Dot[
                 Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 1}]/Norm[
               
                Part[$CellContext`newGs, $CellContext`i, 1]] == -1, 
              RotationMatrix[Pi, {1, 0, 0}], 
              RotationMatrix[{
                Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 
                1}}]], {$CellContext`i, 
              Length[$CellContext`newGs]}]]; $CellContext`rotatedVerts = 
          Table[{
             Dot[
              Part[$CellContext`rotMats, $CellContext`i], 
              
              Part[$CellContext`vertTest, $CellContext`i, $CellContext`j, 
               1]], $CellContext`j}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`shifts = Table[
            Mean[
             Table[{
               
               Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j,
                 1, 1], 
               
               Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j,
                 1, 2], 0}, {$CellContext`j, 
               Length[
                
                Part[$CellContext`rotatedVerts, $CellContext`i]]}]], \
{$CellContext`i, 
             Length[$CellContext`rotatedVerts]}]; $CellContext`centeredVerts = 
          Table[{Part[$CellContext`rotatedVerts, $CellContext`i, \
$CellContext`j, 1] - Part[$CellContext`shifts, $CellContext`i], 
             
             Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j, 
              2]}, {$CellContext`i, 
             Length[$CellContext`rotatedVerts]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`rotatedVerts, $CellContext`i]]}]; \
$CellContext`sortedVerts = Table[
            Sort[
             Part[$CellContext`centeredVerts, $CellContext`i], ArcTan[
               Part[#, 1, 1], 
               Part[#, 1, 2]] > ArcTan[
               Part[#2, 1, 1], 
               Part[#2, 1, 2]]& ], {$CellContext`i, 
             Length[$CellContext`centeredVerts]}]; $CellContext`finVerts = 
          Table[{
             Part[$CellContext`vertTest, $CellContext`i, 
              
              Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
               2], 1], 
             Sort[
              Part[$CellContext`vertTest, $CellContext`i, 
               
               Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
                2], 2]]}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`facets = Table[
            
            Part[$CellContext`finVerts, $CellContext`i, $CellContext`j, 
             1], {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]], \
$CellContext`neighborQ[
         Pattern[$CellContext`id, 
          Blank[]], 
         Pattern[$CellContext`glist, 
          Blank[]], 
         Pattern[$CellContext`sensitivity, 
          Blank[]]] := 
       Module[{$CellContext`dots, $CellContext`sorted, \
$CellContext`neighbors, $CellContext`fin}, $CellContext`dots = Table[{
             Dot[
              Part[$CellContext`glist, $CellContext`i, 1], 
              Normalize[
               
               Part[$CellContext`glist, $CellContext`id, 
                1]]], $CellContext`i}, {$CellContext`i, 
             Length[$CellContext`glist]}]; $CellContext`sorted = 
          Sort[$CellContext`dots, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`neighbors = Table[
            Part[$CellContext`sorted, $CellContext`i, 2], {$CellContext`i, 
             Min[$CellContext`sensitivity, 
              Length[$CellContext`glist]]}]; $CellContext`fin = 
          Select[$CellContext`neighbors, 
            Not[# === $CellContext`id]& ]], $CellContext`findvert = 
       CompiledFunction[{8, 9., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {3, 1, 2}, {3, 1, 
         5}}, {{1, {2, 0, 2}}, {7., {3, 0, 9}}, {
          2, {2, 0, 1}}, {{1.*^6, 1.*^6, 1.*^6}, {3, 1, 3}}, {
          1.*^-12, {3, 0, 8}}, {3, {2, 0, 0}}}, {1, 3, 43, 0, 
         6}, {{38, 0, 0, 0, 0, 0}, {38, 1, 0, 1, 0, 1}, {38, 2, 0, 2, 0, 2}, {
          16, 0, 1, 2, 0}, {38, 0, 0, 1, 0, 1}, {38, 1, 0, 0, 0, 2}, {38, 2, 
          0, 2, 0, 3}, {16, 1, 2, 3, 1}, {19, 1, 2}, {38, 0, 0, 0, 0, 1}, {38,
           1, 0, 2, 0, 3}, {38, 2, 0, 1, 0, 4}, {16, 1, 3, 4, 1}, {19, 1, 
          3}, {38, 0, 0, 2, 0, 1}, {38, 1, 0, 0, 0, 4}, {38, 2, 0, 1, 0, 5}, {
          16, 1, 4, 5, 1}, {38, 0, 0, 1, 0, 4}, {38, 1, 0, 2, 0, 5}, {38, 2, 
          0, 0, 0, 6}, {16, 4, 5, 6, 4}, {38, 0, 0, 2, 0, 5}, {38, 1, 0, 1, 0,
           6}, {38, 2, 0, 0, 0, 7}, {16, 5, 6, 7, 5}, {19, 5, 6}, {13, 0, 2, 
          3, 1, 4, 6, 0}, {40, 38, 3, 0, 0, 3, 0, 2}, {27, 3, 9, 2, 8, 0}, {2,
           0, 3}, {42, "CopyTensor", 3, 1, 3, 3, 1, 5}, {3, 109}, {38, 2, 0, 
          2, 0, 2}, {40, 56, 3, 0, 2, 3, 0, 4}, {38, 0, 0, 0, 0, 6}, {38, 1, 
          0, 1, 0, 5}, {38, 2, 0, 1, 0, 7}, {38, 1, 0, 0, 0, 3}, {38, 0, 0, 1,
           0, 1}, {40, 56, 3, 0, 7, 3, 0, 10}, {38, 1, 0, 2, 0, 11}, {40, 56, 
          3, 0, 11, 3, 0, 12}, {38, 0, 0, 2, 0, 13}, {40, 56, 3, 0, 13, 3, 0, 
          14}, {38, 2, 0, 0, 0, 15}, {40, 56, 3, 0, 1, 3, 0, 16}, {40, 56, 3, 
          0, 6, 3, 0, 17}, {40, 56, 3, 0, 5, 3, 0, 18}, {40, 56, 3, 0, 3, 3, 
          0, 19}, {40, 56, 3, 0, 15, 3, 0, 20}, {40, 60, 3, 0, 0, 3, 0, 21}, {
          16, 6, 5, 4, 22}, {16, 1, 3, 4, 23}, {19, 23, 24}, {16, 6, 12, 7, 
          23}, {19, 23, 25}, {16, 6, 18, 7, 23}, {19, 23, 26}, {16, 14, 3, 7, 
          23}, {16, 16, 3, 7, 27}, {16, 17, 3, 7, 28}, {16, 6, 19, 7, 29}, {
          19, 29, 30}, {16, 6, 5, 10, 29}, {16, 1, 3, 10, 31}, {19, 31, 32}, {
          16, 1, 12, 15, 31}, {16, 14, 5, 15, 33}, {19, 33, 34}, {16, 16, 5, 
          15, 33}, {19, 33, 35}, {16, 17, 5, 15, 33}, {19, 33, 36}, {16, 1, 
          18, 15, 33}, {16, 1, 19, 15, 37}, {16, 6, 5, 20, 38}, {16, 1, 3, 20,
           39}, {19, 39, 40}, {13, 22, 24, 25, 26, 23, 27, 28, 30, 29, 32, 31,
           34, 35, 36, 33, 37, 38, 40, 22}, {16, 22, 21, 22}, {16, 6, 12, 2, 
          24}, {16, 6, 18, 2, 25}, {16, 14, 3, 2, 26}, {19, 26, 23}, {16, 16, 
          3, 2, 26}, {19, 26, 27}, {16, 17, 3, 2, 26}, {19, 26, 28}, {16, 6, 
          19, 2, 26}, {16, 6, 11, 4, 30}, {19, 30, 29}, {16, 13, 3, 4, 30}, {
          16, 6, 11, 10, 32}, {19, 32, 31}, {16, 13, 3, 10, 32}, {16, 14, 11, 
          15, 34}, {16, 16, 11, 15, 35}, {16, 17, 11, 15, 36}, {16, 13, 12, 
          15, 33}, {19, 33, 37}, {16, 13, 18, 15, 33}, {19, 33, 38}, {16, 13, 
          19, 15, 33}, {19, 33, 40}, {16, 6, 11, 20, 33}, {19, 33, 39}, {16, 
          13, 3, 20, 33}, {13, 24, 25, 23, 27, 28, 26, 29, 30, 31, 32, 34, 35,
           36, 37, 38, 40, 39, 33, 24}, {16, 24, 21, 24}, {19, 1, 25}, {16, 
          25, 12, 2, 25}, {16, 14, 5, 2, 23}, {16, 16, 5, 2, 27}, {16, 17, 5, 
          2, 28}, {16, 1, 18, 2, 26}, {19, 26, 29}, {16, 1, 19, 2, 26}, {19, 
          26, 30}, {16, 1, 11, 4, 26}, {16, 13, 5, 4, 31}, {19, 31, 32}, {16, 
          14, 11, 7, 31}, {19, 31, 34}, {16, 16, 11, 7, 31}, {19, 31, 35}, {
          16, 17, 11, 7, 31}, {19, 31, 36}, {16, 13, 12, 7, 31}, {16, 13, 18, 
          7, 37}, {16, 13, 19, 7, 38}, {16, 1, 11, 10, 40}, {16, 13, 5, 10, 
          39}, {19, 39, 33}, {16, 1, 11, 20, 39}, {16, 13, 5, 20, 41}, {19, 
          41, 42}, {13, 25, 23, 27, 28, 29, 30, 26, 32, 34, 35, 36, 31, 37, 
          38, 40, 33, 39, 42, 25}, {16, 25, 21, 25}, {34, 22, 24, 25, 3, 4}, {
          42, "CopyTensor", 3, 1, 4, 3, 1, 5}, {1}}, 
         Function[{$CellContext`a, $CellContext`b, $CellContext`c}, 
          
          Block[{Compile`$3, Compile`$4, Compile`$1, Compile`$2, Compile`$15, 
            Compile`$7, Compile`$6, Compile`$46, Compile`$13, Compile`$14, 
            Compile`$28, Compile`$31, Compile`$51, Compile`$37, Compile`$40, 
            Compile`$22, Compile`$43, Compile`$61, Compile`$66}, 
           
           Block[{$CellContext`denom = (Part[$CellContext`a, 3] 
                Part[$CellContext`b, 2]) Part[$CellContext`c, 1] - (
               Part[$CellContext`a, 2] Part[$CellContext`b, 3]) 
              Part[$CellContext`c, 1] - (Part[$CellContext`a, 3] 
               Part[$CellContext`b, 1]) 
              Part[$CellContext`c, 2] + (Part[$CellContext`a, 1] 
                Part[$CellContext`b, 3]) 
               Part[$CellContext`c, 2] + (Part[$CellContext`a, 2] 
                Part[$CellContext`b, 1]) Part[$CellContext`c, 3] - (
               Part[$CellContext`a, 1] Part[$CellContext`b, 2]) 
              Part[$CellContext`c, 3]}, 
            If[
            Abs[$CellContext`denom] < 1.*^-12, {1.*^6, 1.*^6, 1.*^6}, 
             Compile`$3 = Part[$CellContext`c, 1]; Compile`$4 = Compile`$3^2; 
             Compile`$1 = Part[$CellContext`a, 3]; 
             Compile`$2 = Part[$CellContext`b, 2]; 
             Compile`$15 = Part[$CellContext`c, 2]; 
             Compile`$7 = Part[$CellContext`b, 3]; 
             Compile`$6 = Part[$CellContext`a, 2]; 
             Compile`$46 = Compile`$15^2; 
             Compile`$13 = Part[$CellContext`b, 1]; 
             Compile`$14 = Compile`$13^2; 
             Compile`$28 = Part[$CellContext`a, 1]; 
             Compile`$31 = Compile`$28^2; 
             Compile`$51 = Part[$CellContext`c, 3]; 
             Compile`$37 = Compile`$6^2; Compile`$40 = Compile`$1^2; 
             Compile`$22 = Compile`$2^2; Compile`$43 = Compile`$7^2; 
             Compile`$61 = Compile`$51^2; 
             Compile`$66 = $CellContext`denom^(-1); {((Compile`$1 Compile`$2) 
                 Compile`$4 - (Compile`$6 Compile`$7) 
                Compile`$4 - (Compile`$1 Compile`$14) 
                Compile`$15 - (Compile`$1 Compile`$22) 
                Compile`$15 + (Compile`$31 Compile`$7) 
                 Compile`$15 + (Compile`$37 Compile`$7) 
                 Compile`$15 + (Compile`$40 Compile`$7) Compile`$15 - (
                 Compile`$1 Compile`$43) 
                Compile`$15 + (Compile`$1 Compile`$2) Compile`$46 - (
                 Compile`$6 Compile`$7) 
                Compile`$46 + (Compile`$6 Compile`$14) Compile`$51 - (
                 Compile`$31 Compile`$2) 
                Compile`$51 - (Compile`$37 Compile`$2) 
                Compile`$51 - (Compile`$40 Compile`$2) 
                Compile`$51 + (Compile`$6 Compile`$22) 
                 Compile`$51 + (Compile`$6 Compile`$43) 
                 Compile`$51 + (Compile`$1 Compile`$2) Compile`$61 - (
                 Compile`$6 Compile`$7) Compile`$61) 
               Compile`$66, ((Compile`$1 Compile`$14) 
                 Compile`$3 + (Compile`$1 Compile`$22) Compile`$3 - (
                 Compile`$31 Compile`$7) 
                Compile`$3 - (Compile`$37 Compile`$7) 
                Compile`$3 - (Compile`$40 Compile`$7) 
                Compile`$3 + (Compile`$1 Compile`$43) Compile`$3 - (
                 Compile`$1 Compile`$13) 
                Compile`$4 + (Compile`$28 Compile`$7) Compile`$4 - (
                 Compile`$1 Compile`$13) 
                Compile`$46 + (Compile`$28 Compile`$7) 
                 Compile`$46 + (Compile`$31 Compile`$13) 
                 Compile`$51 + (Compile`$37 Compile`$13) 
                 Compile`$51 + (Compile`$40 Compile`$13) Compile`$51 - (
                 Compile`$28 Compile`$14) 
                Compile`$51 - (Compile`$28 Compile`$22) 
                Compile`$51 - (Compile`$28 Compile`$43) 
                Compile`$51 - (Compile`$1 Compile`$13) 
                Compile`$61 + (Compile`$28 Compile`$7) Compile`$61) 
               Compile`$66, (((-Compile`$6) Compile`$14) 
                 Compile`$3 + (Compile`$31 Compile`$2) 
                 Compile`$3 + (Compile`$37 Compile`$2) 
                 Compile`$3 + (Compile`$40 Compile`$2) Compile`$3 - (
                 Compile`$6 Compile`$22) 
                Compile`$3 - (Compile`$6 Compile`$43) 
                Compile`$3 + (Compile`$6 Compile`$13) Compile`$4 - (
                 Compile`$28 Compile`$2) 
                Compile`$4 - (Compile`$31 Compile`$13) 
                Compile`$15 - (Compile`$37 Compile`$13) 
                Compile`$15 - (Compile`$40 Compile`$13) 
                Compile`$15 + (Compile`$28 Compile`$14) 
                 Compile`$15 + (Compile`$28 Compile`$22) 
                 Compile`$15 + (Compile`$28 Compile`$43) 
                 Compile`$15 + (Compile`$6 Compile`$13) Compile`$46 - (
                 Compile`$28 Compile`$2) 
                Compile`$46 + (Compile`$6 Compile`$13) Compile`$61 - (
                 Compile`$28 Compile`$2) Compile`$61) Compile`$66}]]]], 
         Evaluate], Attributes[Compile`$3] = {Temporary}, 
       Attributes[Compile`$4] = {Temporary}, 
       Attributes[Compile`$1] = {Temporary}, 
       Attributes[Compile`$2] = {Temporary}, 
       Attributes[Compile`$15] = {Temporary}, 
       Attributes[Compile`$7] = {Temporary}, 
       Attributes[Compile`$6] = {Temporary}, 
       Attributes[Compile`$46] = {Temporary}, 
       Attributes[Compile`$13] = {Temporary}, 
       Attributes[Compile`$14] = {Temporary}, 
       Attributes[Compile`$28] = {Temporary}, 
       Attributes[Compile`$31] = {Temporary}, 
       Attributes[Compile`$51] = {Temporary}, 
       Attributes[Compile`$37] = {Temporary}, 
       Attributes[Compile`$40] = {Temporary}, 
       Attributes[Compile`$22] = {Temporary}, 
       Attributes[Compile`$43] = {Temporary}, 
       Attributes[Compile`$61] = {Temporary}, 
       Attributes[Compile`$66] = {Temporary}, $CellContext`findarea[
         Pattern[$CellContext`vertices, 
          Blank[]]] := 
       Module[{$CellContext`trianglify, $CellContext`areas, \
$CellContext`totalarea}, $CellContext`trianglify = Table[{
             Norm[
             Part[$CellContext`vertices, 1] - 
              Part[$CellContext`vertices, $CellContext`i]], 
             Norm[
             Part[$CellContext`vertices, $CellContext`i] - 
              Part[$CellContext`vertices, $CellContext`i + 1]], 
             Norm[
             Part[$CellContext`vertices, $CellContext`i + 1] - 
              Part[$CellContext`vertices, 1]]}, {$CellContext`i, 2, 
             Length[$CellContext`vertices] - 1}]; $CellContext`areas = 
          Table[0.25 
            Sqrt[(Part[$CellContext`trianglify, $CellContext`i, 1]^2 + 
                Part[$CellContext`trianglify, $CellContext`i, 2]^2 + 
                Part[$CellContext`trianglify, $CellContext`i, 3]^2)^2 - 
              2 (Part[$CellContext`trianglify, $CellContext`i, 1]^4 + 
               Part[$CellContext`trianglify, $CellContext`i, 2]^4 + 
               Part[$CellContext`trianglify, $CellContext`i, 
                  3]^4)], {$CellContext`i, 1, 
             Length[$CellContext`trianglify]}]; $CellContext`totalarea = Sum[
            Part[$CellContext`areas, $CellContext`i], {$CellContext`i, 1, 
             
             Length[$CellContext`areas]}]; $CellContext`totalarea], \
$CellContext`defaultInterface = 
       0., $CellContext`defaultSubstrateOrientation = {0, 
        0, -1}, $CellContext`defaultSubstColor = 
       GrayLevel[0.5], $CellContext`defaultShowSubst = 
       True, $CellContext`defaultShowData = 
       True, $CellContext`groupSet["Cubic"] = {
        "23", "m\!\(\*OverscriptBox[\(3\), \(_\)]\)", "432", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m", 
         "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"}, $CellContext`groupSet[
        "Hexagonal"] = {
        "3", "\!\(\*OverscriptBox[\(3\), \(_\)]\)", "32", "3m", 
         "\!\(\*OverscriptBox[\(3\), \(_\)]\)m", "6", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)", "6/m", "622", "6mm", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2", 
         "6/mmm"}, $CellContext`groupSet["Monoclinic"] = {
        "2", "m", "2/m"}, $CellContext`groupSet["Orthorhombic"] = {
        "222", "mm2", "mmm"}, $CellContext`groupSet["Tetragonal"] = {
        "4", "\!\(\*OverscriptBox[\(4\), \(_\)]\)", "4/m", "422", "4mm", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m", 
         "4/mmm"}, $CellContext`groupSet["Triclinic"] = {
        "1", "\!\(\*OverscriptBox[\(1\), \(_\)]\)"}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False,
   FontSize->Large],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5978280922760143`*^9, 3.597828181334725*^9}]
}, {2}]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1182, 741},
WindowMargins->{{4, Automatic}, {Automatic, 4}},
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
21, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 267, 3, 92, "Title"],
Cell[1756, 40, 924, 18, 169, "Subsubtitle"],
Cell[CellGroupData[{
Cell[2705, 62, 250, 4, 64, "Section",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[2958, 68, 240, 3, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3201, 73, 2558, 41, 71, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[5762, 116, 285, 4, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[6050, 122, 5663, 95, 377, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11716, 219, 230, 3, 24, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11949, 224, 2760, 45, 191, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[14746, 274, 168, 2, 50, "Section"],
Cell[14917, 278, 11014, 245, 1328, "Input",
 InitializationCell->True],
Cell[25934, 525, 90190, 2282, 3580, "Input",
 InitializationCell->True],
Cell[116127, 2809, 51711, 1189, 1949, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[167875, 4003, 102, 1, 50, "Section"],
Cell[CellGroupData[{
Cell[168002, 4008, 12374, 275, 845, "Input"],
Cell[180379, 4285, 60852, 1182, 1017, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @uTIeBPQz0d1uBwQcXzhbWaR *)
