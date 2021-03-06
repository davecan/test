(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    527567,       9908]
NotebookOptionsPosition[    521187,       9685]
NotebookOutlinePosition[    521935,       9712]
CellTagsIndexPosition[    521892,       9709]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["More Riemann Sums", "Section",
 CellChangeTimes->{{3.516722827570177*^9, 3.516722836757677*^9}, {
  3.520162424333375*^9, 3.520162424927125*^9}}],

Cell[TextData[{
 "This ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " notebook is an extension of the work in the notebook RiemannSums.nb posted \
in the ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->"\<\"Mathematica part\"\>", True->
     StyleBox["\<\"Mathematica part\"\>", "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     BaselinePosition->Baseline,
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL["http://www.abstractmath.org/Mathematica/"], None},
    ButtonNote->"http://www.abstractmath.org/Mathematica/"],
   Annotation[#, "http://www.abstractmath.org/Mathematica/", "Hyperlink"]& ]],
  CellChangeTimes->{3.520283147145875*^9, 3.520283281833375*^9}],
 " of abstractmath.org.  It is produced by and is licensed under a ",
 Cell[BoxData[
  RowBox[{
   TagBox[
    ButtonBox[
     PaneSelectorBox[{
      False->"\<\"Creative Commons Attribution - ShareAlike 3.0 License\"\>", 
      True->
      StyleBox["\<\"Creative Commons Attribution - ShareAlike 3.0 \
License\"\>", "HyperlinkActive"]}, Dynamic[
       CurrentValue["MouseOver"]],
      BaseStyle->{"Hyperlink"},
      BaselinePosition->Baseline,
      FrameMargins->0,
      ImageSize->Automatic],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL["http://creativecommons.org/licenses/by-sa/3.0/"], None},
     ButtonNote->"http://creativecommons.org/licenses/by-sa/3.0/"],
    Annotation[#, "http://creativecommons.org/licenses/by-sa/3.0/", 
     "Hyperlink"]& ], " "}]],
  CellChangeTimes->{{3.516312542019249*^9, 3.5163126250020304`*^9}}],
 StyleBox[".  ",
  FontWeight->"Bold"],
 "The work is discussed in the Gyre&Gimble post ",
 Cell[BoxData[
  TagBox[
   ButtonBox[
    PaneSelectorBox[{False->"\<\"Riemann Clouds Improved\"\>", True->
     StyleBox["\<\"Riemann Clouds Improved\"\>", "HyperlinkActive"]}, Dynamic[
      CurrentValue["MouseOver"]],
     BaseStyle->{"Hyperlink"},
     BaselinePosition->Baseline,
     FrameMargins->0,
     ImageSize->Automatic],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL[
      "http://sixwingedseraph.wordpress.com/2011/07/22/riemann-clouds-\
improved/"], None},
    ButtonNote->
     "http://sixwingedseraph.wordpress.com/2011/07/22/riemann-clouds-improved/\
"],
   Annotation[#, 
    "http://sixwingedseraph.wordpress.com/2011/07/22/riemann-clouds-improved/\
", "Hyperlink"]& ]]],
 "."
}], "Text",
 Evaluatable->False,
 CellChangeTimes->{{3.51611951760275*^9, 3.516119657634*^9}, 
   3.516120664774625*^9, {3.516120746837125*^9, 3.51612074916525*^9}, 
   3.516120830243375*^9, 3.51612090022775*^9, 3.516120944055875*^9, {
   3.516121051618375*^9, 3.5161211093215*^9}, {3.516121230337125*^9, 
   3.51612123135275*^9}, {3.516121283305875*^9, 3.516121332009*^9}, {
   3.516121381024625*^9, 3.516121383962125*^9}, {3.516121434337125*^9, 
   3.5161214348215*^9}, {3.516121468274625*^9, 3.516121501743375*^9}, {
   3.516121535462125*^9, 3.516121541274625*^9}, {3.5161279704465*^9, 
   3.516128130055875*^9}, {3.5163122776337*^9, 3.516312416834152*^9}, {
   3.5163126056274023`*^9, 3.516312632939378*^9}, {3.516312928761823*^9, 
   3.5163130078071804`*^9}, {3.5163130407127986`*^9, 
   3.5163131184300566`*^9}, {3.5164812129469624`*^9, 3.516481214321944*^9}, {
   3.516555426265625*^9, 3.516555493953125*^9}, 3.516723123460802*^9, {
   3.516723186460802*^9, 3.516723192945177*^9}, {3.516723265773302*^9, 
   3.516723305507677*^9}, {3.520282773208375*^9, 3.520282779614625*^9}, {
   3.5202828132865*^9, 3.52028293056775*^9}, {3.520282993974*^9, 
   3.520283009849*^9}, {3.520283128583375*^9, 3.520283153458375*^9}, {
   3.520283225708375*^9, 3.520283251208375*^9}, {3.520283288614625*^9, 
   3.520283314458375*^9}, 3.520288678849*^9}],

Cell[CellGroupData[{

Cell["Riemann Package (opened for modification)", "Subsection",
 CellChangeTimes->{{3.482750361528*^9, 3.4827503673789997`*^9}, {
  3.516747323523302*^9, 3.516747329992052*^9}}],

Cell[TextData[{
 "This package provides ",
 StyleBox["PlotRiemann",
  FontWeight->"Bold"],
 ", which shows Riemann sum of a given integral with various choices of \
parameters, and ",
 StyleBox["CloudList",
  FontWeight->"Bold"],
 ", which plots the values of a number of random Riemann sums of the given \
integral.  It is a work in progress. You are encouraged to improve this work \
and to use it in your own publications and coursework.  "
}], "Text",
 CellChangeTimes->{{3.516711469484375*^9, 3.51671156396875*^9}, {
   3.516722719273302*^9, 3.516722747304552*^9}, 3.516722867617052*^9, {
   3.516722994617052*^9, 3.516723043304552*^9}, {3.516749294945177*^9, 
   3.516749300492052*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"SetOptions", "[", 
    RowBox[{"Plot", ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ";"}], 
  " "}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747023351427*^9}, {
  3.516747150585802*^9, 3.516747154710802*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"PlotBounded", "[", 
   RowBox[{"expression_", ",", "range_", ",", "options___"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "g", ",", "f", ",", "left", ",", "right", ",", "newleft", ",", 
      "newright", ",", "var", ",", "leftheight", ",", "rightheight", ",", 
      "width", ",", "newrange"}], "}"}], ",", 
    RowBox[{
     RowBox[{"var", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"f", "=", 
      RowBox[{"Function", "[", 
       RowBox[{
        RowBox[{"Release", "[", "var", "]"}], ",", "expression"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"left", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"right", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"width", "=", 
      RowBox[{"right", "-", "left"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"leftheight", "=", 
      RowBox[{"f", "[", "left", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"rightheight", "=", 
      RowBox[{"f", "[", "right", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"newleft", "=", 
      RowBox[{"left", "-", 
       RowBox[{"0.25", "*", "width"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"newright", "=", 
      RowBox[{"right", "+", 
       RowBox[{"0.25", "*", "width"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"newrange", "=", 
      RowBox[{"{", 
       RowBox[{"var", ",", "newleft", ",", "newright"}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"g", ":=", 
      RowBox[{"Plot", "[", 
       RowBox[{"expression", ",", 
        RowBox[{"Release", "[", "newrange", "]"}], ",", 
        RowBox[{"DisplayFunction", "\[Rule]", "Identity"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"{", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], "}"}]}], ",", 
        "options"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Show", "[", 
      RowBox[{"g", ",", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"left", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"left", ",", "leftheight"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"right", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"right", ",", "rightheight"}], "}"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", 
       RowBox[{"DisplayFunction", "\[Rule]", "$DisplayFunction"}]}], 
      "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747023351427*^9}, 
   3.516747150585802*^9, 3.516747272304552*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PlotBounded", "[", 
  RowBox[{
   RowBox[{".3", 
    RowBox[{"x", "^", "2"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "2"}], ",", "3"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516747356242052*^9, 3.516747385226427*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
qaXtBXjsfxkqSvI=
      "]]}}, {LineBox[{{-2, 0}, {-2, 1.2}}], 
    LineBox[{{3, 0}, {3, 2.6999999999999997`}}]}},
  Axes->True,
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  PlotRange->{{-3.25, 4.25}, {0., 5.418749609693885}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.516747386773302*^9, 3.516749320398302*^9, 3.51679931406252*^9, 
   3.51958537928475*^9, 3.51958583840975*^9, 3.519588632066*^9, {
   3.51958893997225*^9, 3.5195889690035*^9}, 3.51958908965975*^9, 
   3.51959948659725*^9, 3.51959959290975*^9, {3.5195996972535*^9, 
   3.519599725394125*^9}, 3.519600142191*^9, 3.5201191099368*^9, 
   3.52016245863025*^9, 3.520162581958375*^9, 3.52016265713025*^9, 
   3.520164177802125*^9, 3.520164741724*^9, 3.520165219020875*^9, 
   3.520165260349*^9, 3.520185966614625*^9, 3.52018748206775*^9, 
   3.520188095927125*^9, 3.5201885456615*^9, 3.52018884475525*^9, 
   3.520282740708375*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"RandomPartition", "[", 
   RowBox[{"range_", ",", "mesh_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"u", "=", 
       RowBox[{"range", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ",", 
      RowBox[{"top", "=", 
       RowBox[{"range", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], ",", 
      RowBox[{"list", "=", 
       RowBox[{"{", 
        RowBox[{"range", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "}"}]}], ",", "v", ",", "newlist", 
      ",", 
      RowBox[{"actualmesh", "=", "0"}]}], "}"}], ",", 
    RowBox[{
     RowBox[{"While", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"u", "+", "mesh"}], "<", "top"}], ",", 
       RowBox[{
        RowBox[{"v", "=", 
         RowBox[{"u", "+", 
          RowBox[{"Random", "[", 
           RowBox[{"Real", ",", "mesh"}], "]"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"actualmesh", "=", 
         RowBox[{"Max", "[", 
          RowBox[{"actualmesh", ",", 
           RowBox[{"v", "-", "u"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"newlist", ":=", 
         RowBox[{"Append", "[", 
          RowBox[{"list", ",", "v"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"u", "=", "v"}], ";", "\[IndentingNewLine]", 
        RowBox[{"list", "=", "newlist"}]}]}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"partitionstring", "=", 
      RowBox[{"StringJoin", "[", 
       RowBox[{"\"\<Random partition with maximum norm \>\"", ",", 
        RowBox[{"ToString", "[", "mesh", "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"actualmesh", "=", 
      RowBox[{"Max", "[", 
       RowBox[{"actualmesh", ",", 
        RowBox[{"top", "-", 
         RowBox[{"Last", "[", "list", "]"}]}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Return", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Append", "[", 
         RowBox[{"list", ",", "top"}], "]"}], ",", "actualmesh"}], "}"}], 
      "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747033304552*^9}, 
   3.516747166913927*^9}],

Cell[BoxData[
 RowBox[{"rp1", ":=", 
  RowBox[{"RandomPartition", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "2"}], ",", "3"}], "}"}], ",", ".3"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.516747491054552*^9, 3.516747515085802*^9}, {
  3.516747614038927*^9, 3.516747614382677*^9}}],

Cell[CellGroupData[{

Cell[BoxData["rp1"], "Input",
 CellChangeTimes->{{3.516747526351427*^9, 3.516747526867052*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "2"}], ",", 
     RowBox[{"-", "1.9769828718237676`"}], ",", 
     RowBox[{"-", "1.8335072170888327`"}], ",", 
     RowBox[{"-", "1.8183752814798761`"}], ",", 
     RowBox[{"-", "1.7576740736903236`"}], ",", 
     RowBox[{"-", "1.5058169585956978`"}], ",", 
     RowBox[{"-", "1.304921292530494`"}], ",", 
     RowBox[{"-", "1.2993565994670169`"}], ",", 
     RowBox[{"-", "1.1504412942105382`"}], ",", 
     RowBox[{"-", "0.917843865367546`"}], ",", 
     RowBox[{"-", "0.6873334996017213`"}], ",", 
     RowBox[{"-", "0.4449903572444112`"}], ",", 
     RowBox[{"-", "0.4004710281204418`"}], ",", 
     RowBox[{"-", "0.12582755926256328`"}], ",", "0.155327640443979`", ",", 
     "0.25085984108615955`", ",", "0.41973582460133524`", ",", 
     "0.5139425811023737`", ",", "0.5992954015989385`", ",", 
     "0.8202743269965437`", ",", "0.9376260527625265`", ",", 
     "1.184686083020044`", ",", "1.363968919287604`", ",", 
     "1.426831883599685`", ",", "1.5248154520038417`", ",", 
     "1.748858354085127`", ",", "1.784665535617752`", ",", 
     "1.8323965643208764`", ",", "1.8696789249354804`", ",", 
     "2.14186471192214`", ",", "2.2767762273895613`", ",", 
     "2.3189425630292084`", ",", "2.507309618387334`", ",", 
     "2.5468979765310014`", ",", "2.751299126232598`", ",", "3"}], "}"}], ",",
    "0.2811551997065423`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.516747528226427*^9, 3.516747619835802*^9, {3.516748804742052*^9, 
   3.516748812757677*^9}, 3.516749320476427*^9, 3.5167993141406384`*^9, 
   3.51958537934725*^9, 3.519585838487875*^9, 3.5195886321285*^9, {
   3.519588940050375*^9, 3.519588969081625*^9}, 3.519589089737875*^9, 
   3.51959948665975*^9, 3.519599592987875*^9, {3.519599697331625*^9, 
   3.51959972553475*^9}, 3.5196001422535*^9, 3.5201191099992*^9, 
   3.520162458708375*^9, 3.5201625820365*^9, 3.520162657208375*^9, 
   3.52016417788025*^9, 3.520164741802125*^9, 3.520165219099*^9, 
   3.520165260427125*^9, 3.52018596669275*^9, 3.520187482145875*^9, 
   3.52018809600525*^9, 3.52018854575525*^9, 3.520188844833375*^9, 
   3.5202827407865*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", 
  RowBox[{"rp1", "[", 
   RowBox[{"[", "1", "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.516748774523302*^9, 3.516748790195177*^9}, {
  3.516748824867052*^9, 3.516748844507677*^9}}],

Cell[BoxData["38"], "Output",
 CellChangeTimes->{
  3.516748847679552*^9, 3.516749320507677*^9, 3.5167993141875095`*^9, 
   3.5195853793785*^9, 3.51958583853475*^9, 3.51958863215975*^9, {
   3.51958894009725*^9, 3.519588969112875*^9}, 3.51958908978475*^9, 
   3.519599486706625*^9, 3.519599593050375*^9, {3.519599697362875*^9, 
   3.519599725581625*^9}, 3.519600142300375*^9, 3.5201191100304003`*^9, 
   3.520162458739625*^9, 3.52016258206775*^9, 3.520162657239625*^9, 
   3.520164177927125*^9, 3.520164741849*^9, 3.52016521913025*^9, 
   3.520165260474*^9, 3.52018596675525*^9, 3.52018748219275*^9, 
   3.52018809606775*^9, 3.52018854581775*^9, 3.520188844895875*^9, 
   3.520282740833375*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"UniformPartition", "[", 
   RowBox[{"range_", ",", "number_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"bottom", "=", 
       RowBox[{
        RowBox[{"range", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "//", "N"}]}], ",", 
      RowBox[{"top", "=", 
       RowBox[{
        RowBox[{"range", "[", 
         RowBox[{"[", "3", "]"}], "]"}], "//", "N"}]}], ",", "actualmesh"}], 
     "}"}], ",", 
    RowBox[{
     RowBox[{"actualmesh", "=", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"top", "-", "bottom"}], ")"}], "/", "number"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"partitionstring", "=", 
      RowBox[{"StringJoin", "[", 
       RowBox[{"\"\<Uniform partition into \>\"", ",", 
        RowBox[{"ToString", "[", "number", "]"}], ",", 
        "\"\< subintervals\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Return", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"N", "[", 
         RowBox[{"Range", "[", 
          RowBox[{"bottom", ",", "top", ",", "actualmesh"}], "]"}], "]"}], 
        ",", "actualmesh"}], "}"}], "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747033304552*^9}, {
  3.516747166913927*^9, 3.516747168398302*^9}}],

Cell[BoxData[
 RowBox[{"up1", ":=", 
  RowBox[{"UniformPartition", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "2"}], ",", "3"}], "}"}], ",", "5"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.516747665179552*^9, 3.516747680085802*^9}, {
  3.52018604413025*^9, 3.52018604900525*^9}}],

Cell[CellGroupData[{

Cell[BoxData["up1"], "Input",
 CellChangeTimes->{{3.516747670054552*^9, 3.516747670320177*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "2.`"}], ",", 
     RowBox[{"-", "1.`"}], ",", "0.`", ",", "1.`", ",", "2.`", ",", "3.`"}], 
    "}"}], ",", "1.`"}], "}"}]], "Output",
 CellChangeTimes->{{3.516747671476427*^9, 3.516747682945177*^9}, 
   3.516749320570177*^9, 3.516799314281252*^9, 3.519585379425375*^9, 
   3.51958583859725*^9, 3.51958863222225*^9, {3.51958894015975*^9, 
   3.519588969175375*^9}, 3.51958908984725*^9, 3.519599486769125*^9, 
   3.5195995931285*^9, {3.51959969740975*^9, 3.519599725644125*^9}, 
   3.519600142331625*^9, 3.5201191100772*^9, 3.52016245881775*^9, 
   3.520162582114625*^9, 3.5201626572865*^9, 3.520164177989625*^9, 
   3.520164741927125*^9, 3.520165219177125*^9, 3.5201652605365*^9, 
   3.52018596681775*^9, 3.52018748225525*^9, 3.52018809613025*^9, 
   3.5201885459115*^9, 3.520188844958375*^9, 3.5202827409115*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Slices", "[", 
   RowBox[{
   "expression_", ",", "variable_", ",", "list_", ",", "options___Rule"}], 
   "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"i", "=", "1"}], ",", 
      RowBox[{"startlist", "=", "list"}], ",", "leftlist", ",", "rightlist", 
      ",", "widthlist", ",", "selectlist", ",", "arealist", ",", "heightlist",
       ",", "valuelist", ",", 
      RowBox[{"opt", "=", 
       RowBox[{
        RowBox[{"Height", "/.", 
         RowBox[{"{", "options", "}"}]}], "/.", 
        RowBox[{"Options", "[", "RiemannData", "]"}]}]}], ",", 
      RowBox[{"f", "=", 
       RowBox[{"Function", "[", 
        RowBox[{"variable", ",", "expression"}], "]"}]}]}], "}"}], ",", 
    RowBox[{
     RowBox[{"leftlist", "=", 
      RowBox[{"Drop", "[", 
       RowBox[{"list", ",", 
        RowBox[{"-", "1"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"rightlist", "=", 
      RowBox[{"Drop", "[", 
       RowBox[{"list", ",", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"widthlist", "=", 
      RowBox[{"rightlist", "-", "leftlist"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"selectlist", "=", 
      RowBox[{"Switch", "[", 
       RowBox[{"opt", ",", "LeftSide", ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
          "heightstring", "=", 
           "\"\<Left edge of subinterval used for height\>\""}], ";", 
          "leftlist"}], ")"}], ",", "RightSide", ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
          "heightstring", "=", 
           "\"\<Right edge of subinterval used for height\>\""}], ";", 
          "rightlist"}], ")"}], ",", "Midpoint", ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
          "heightstring", "=", 
           "\"\<Midpoint of subinterval used for height\>\""}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"leftlist", "+", 
           RowBox[{"0.5", "*", "widthlist"}]}]}], ")"}], ",", "Random", ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
          "heightstring", "=", 
           "\"\<Random point in subinterval used for height\>\""}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"leftlist", "+", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"Random", "[", 
               RowBox[{"Real", ",", "#"}], "]"}], "&"}], "/@", "widthlist"}], 
            ")"}]}]}], ")"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"heightlist", "=", 
      RowBox[{"f", "/@", "selectlist"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"arealist", "=", 
      RowBox[{"heightlist", "*", "widthlist"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"heightlist", ",", "arealist"}], "}"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747033304552*^9}, {
   3.516747166913927*^9, 3.516747168398302*^9}, 3.516747266617052*^9}],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{"Boxx", "::", "usage"}], "=", 
   "\"\<Boxx[bottom, top, left, right]\nproduces a series of Line statements \
which in a\nGraphics object will draw a hollow rectangle with\nthe corners \
given.  (Note that the built in\ncommand Rectangle draws a solid \
rectangle.)\>\""}], "*)"}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747041601427*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"Boxx", "[", 
   RowBox[{"bottom_", ",", "top_", ",", "left_", ",", "right_"}], "]"}], ":=", 
  RowBox[{"Line", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"left", ",", "bottom"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"right", ",", "bottom"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"right", ",", "top"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"left", ",", "top"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"left", ",", "bottom"}], "}"}]}], "}"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747047179552*^9}, {
  3.516747175945177*^9, 3.516747177679552*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", 
  RowBox[{"Graphics", "[", 
   RowBox[{"Boxx", "[", 
    RowBox[{"0", ",", ".1", ",", 
     RowBox[{"-", ".1"}], ",", ".3"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.516747753913927*^9, 3.516747819195177*^9}}],

Cell[BoxData[
 GraphicsBox[
  LineBox[{{-0.1, 0}, {0.3, 0}, {0.3, 0.1}, {-0.1, 
    0.1}, {-0.1, 0}}]]], "Output",
 CellChangeTimes->{{3.516747783351427*^9, 3.516747819648302*^9}, 
   3.516749320632677*^9, 3.51679931435937*^9, 3.519585379487875*^9, 
   3.51958583865975*^9, 3.51958863228475*^9, {3.519588940237875*^9, 
   3.51958896922225*^9}, 3.519589089925375*^9, 3.51959948684725*^9, 
   3.51959959322225*^9, {3.51959969747225*^9, 3.51959972578475*^9}, 
   3.519600142394125*^9, 3.520119110124*^9, 3.52016245888025*^9, 
   3.5201625821615*^9, 3.520162657349*^9, 3.52016417806775*^9, 
   3.52016474200525*^9, 3.520165219270875*^9, 3.520165260614625*^9, 
   3.5201859669115*^9, 3.52018748231775*^9, 3.520188096224*^9, 
   3.520188546020875*^9, 3.520188845052125*^9, 3.520282740974*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ShowSlices", "[", 
   RowBox[{"partition_", ",", "heightlist_"}], "]"}], ":=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"Boxx", "[", 
     RowBox[{"0", ",", 
      RowBox[{"heightlist", "[", 
       RowBox[{"[", "i", "]"}], "]"}], ",", 
      RowBox[{"partition", "[", 
       RowBox[{"[", "i", "]"}], "]"}], ",", 
      RowBox[{"partition", "[", 
       RowBox[{"[", 
        RowBox[{"i", "+", "1"}], "]"}], "]"}]}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", "1", ",", 
      RowBox[{
       RowBox[{"Length", "[", "partition", "]"}], "-", "1"}]}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747060757677*^9}, 
   3.516747179367052*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Table", "[", 
  RowBox[{
   RowBox[{"1", "+", 
    RowBox[{".1", "n"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "0", ",", 
     RowBox[{"Length", "[", 
      RowBox[{"rp1", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516748890960802*^9, 3.516748891648302*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.`", ",", "1.1`", ",", "1.2`", ",", "1.3`", ",", "1.4`", ",", "1.5`", ",",
    "1.6`", ",", "1.7000000000000002`", ",", "1.8`", ",", "1.9`", ",", "2.`", 
   ",", "2.1`", ",", "2.2`", ",", "2.3`", ",", "2.4000000000000004`", ",", 
   "2.5`", ",", "2.6`", ",", "2.7`", ",", "2.8`", ",", "2.9000000000000004`", 
   ",", "3.`", ",", "3.1`", ",", "3.2`", ",", "3.3000000000000003`", ",", 
   "3.4000000000000004`", ",", "3.5`", ",", "3.6`", ",", "3.7`", ",", 
   "3.8000000000000003`", ",", "3.9000000000000004`", ",", "4.`", ",", "4.1`",
    ",", "4.2`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.516748760382677*^9, 3.516748892929552*^9, 3.516749320648302*^9, 
   3.5167993144062414`*^9, 3.51958537953475*^9, 3.519585838706625*^9, 
   3.519588632316*^9, {3.519588940300375*^9, 3.519588969269125*^9}, 
   3.51958908997225*^9, 3.5195994868785*^9, 3.5195995932535*^9, {
   3.5195996975035*^9, 3.519599725816*^9}, 3.51960014240975*^9, 
   3.5201191101396*^9, 3.520162458895875*^9, 3.52016258219275*^9, 
   3.520162657395875*^9, 3.520164178114625*^9, 3.520164742052125*^9, 
   3.520165219302125*^9, 3.5201652606615*^9, 3.52018596694275*^9, 
   3.520187482364625*^9, 3.52018809625525*^9, 3.520188546083375*^9, 
   3.520188845083375*^9, 3.5202827410365*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Options", "[", "RiemannData", "]"}], ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Subintervals", "\[Rule]", "12"}], ",", 
    RowBox[{"Partition", "\[Rule]", "Uniform"}], ",", 
    RowBox[{"Mesh", "\[Rule]", 
     RowBox[{"intervallength", "/", "6.0"}]}], ",", 
    RowBox[{"Height", "\[Rule]", "Midpoint"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747079679552*^9}}],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{"Options", "[", "PlotRiemann", "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{"FontSize", "\[Rule]", "12"}], "}"}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747088242052*^9}, 
   3.516747135273302*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"RiemannData", "[", 
   RowBox[{"expression_", ",", " ", "range_", ",", " ", "options___Rule"}], 
   "]"}], " ", ":=", "\n", "\t", 
  RowBox[{"Block", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"M", "=", 
       RowBox[{
        RowBox[{"Mesh", " ", "/.", " ", 
         RowBox[{"{", "options", "}"}]}], " ", "\n", "\t\t\t", "/.", " ", 
        RowBox[{"Options", "[", "RiemannData", "]"}]}]}], ",", "\n", "\t\t", 
      RowBox[{"S", "=", 
       RowBox[{
        RowBox[{"Subintervals", " ", "/.", " ", 
         RowBox[{"{", "options", "}"}]}], " ", "\n", "\t\t\t", "/.", " ", 
        RowBox[{"Options", "[", "RiemannData", "]"}]}]}], ",", "\n", "\t\t", 
      RowBox[{"P", "=", 
       RowBox[{
        RowBox[{"Partition", " ", "/.", " ", 
         RowBox[{"{", "options", "}"}]}], " ", "\n", "\t\t\t", "/.", " ", 
        RowBox[{"Options", "[", "RiemannData", "]"}]}]}], ",", "\n", "\t\t", 
      RowBox[{"variable", "=", 
       RowBox[{"range", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ",", "\n", "\t\t", 
      RowBox[{"intervallength", "=", 
       RowBox[{
        RowBox[{"range", "[", 
         RowBox[{"[", "3", "]"}], "]"}], "-", 
        RowBox[{"range", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}]}]}], "}"}], ",", "\n", "\t\t", 
    RowBox[{
     RowBox[{"list", "=", 
      RowBox[{"Switch", "[", 
       RowBox[{"P", ",", " ", "Uniform", ",", " ", "\n", "\t\t\t", 
        RowBox[{"UniformPartition", "[", 
         RowBox[{"range", ",", " ", "S"}], "]"}], ",", "\n", "\t\t\t", 
        "Random", ",", "\n", "\t\t\t", 
        RowBox[{"RandomPartition", "[", 
         RowBox[{"range", ",", " ", "M"}], "]"}]}], "\n", "           ", 
       "]"}]}], ";", " ", "\n", "\t", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"list", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "}"}], " ", "~", "Join", "~", " ", 
      "\n", "\t\t", 
      RowBox[{"Slices", "[", 
       RowBox[{"expression", ",", " ", "variable", ",", " ", 
        RowBox[{"list", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", " ", "options"}], "]"}], "\n", 
      "\t\t", "~", "Join", "~", " ", 
      RowBox[{"{", 
       RowBox[{"list", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "}"}]}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747101945177*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"RiemannData", "[", 
  RowBox[{
   RowBox[{".3", 
    RowBox[{"x", "^", "2"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "1"}], ",", "2"}], "}"}], ",", 
   RowBox[{"Subintervals", "\[Rule]", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516749012132677*^9, 3.516749068679552*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1.`"}], ",", 
     RowBox[{"-", "0.25`"}], ",", "0.5`", ",", "1.25`", ",", "2.`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
    "0.1171875`", ",", "0.0046875`", ",", "0.2296875`", ",", 
     "0.7921874999999999`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "0.087890625`", ",", "0.0035156249999999997`", ",", 
     "0.17226562499999998`", ",", "0.594140625`"}], "}"}], ",", "0.75`"}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.516749056382677*^9, 3.516749071273302*^9}, 
   3.516749320710802*^9, 3.516799314468736*^9, 3.519585379581625*^9, 
   3.519585838769125*^9, 3.5195886323785*^9, {3.5195889403785*^9, 
   3.519588969362875*^9}, 3.519589090050375*^9, 3.519599486956625*^9, 
   3.519599593331625*^9, {3.519599697566*^9, 3.519599725894125*^9}, 
   3.51960014247225*^9, 3.5201191102019997`*^9, 3.520162458958375*^9, 
   3.520162582270875*^9, 3.520162657458375*^9, 3.52016417819275*^9, 
   3.52016474213025*^9, 3.520165219349*^9, 3.520165260724*^9, 
   3.520185967020875*^9, 3.520187482427125*^9, 3.520188096333375*^9, 
   3.520188546177125*^9, 3.5201888451615*^9, 3.520282741114625*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"RiemannData", "[", 
  RowBox[{
   RowBox[{".3", 
    RowBox[{"x", "^", "2"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "1"}], ",", "2"}], "}"}], ",", 
   RowBox[{"Partition", "\[Rule]", "Uniform"}], ",", 
   RowBox[{"Height", "\[Rule]", "RightSide"}], ",", 
   RowBox[{"Subintervals", "\[Rule]", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.52018786931775*^9, 3.5201878981615*^9}, 
   3.520187998177125*^9, {3.520188120427125*^9, 3.52018814050525*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1.`"}], ",", 
     RowBox[{"-", "0.25`"}], ",", "0.5`", ",", "1.25`", ",", "2.`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{"0.01875`", ",", "0.075`", ",", "0.46875`", ",", "1.2`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
    "0.014062499999999999`", ",", "0.056249999999999994`", ",", "0.3515625`", 
     ",", "0.8999999999999999`"}], "}"}], ",", "0.75`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.520187999677125*^9, 3.520188096395875*^9, {3.52018812844275*^9, 
   3.5201881415365*^9}, 3.520188546224*^9, 3.520188845208375*^9, 
   3.520282741177125*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"RiemannSum", "[", 
   RowBox[{"expression_", ",", "range_", ",", "options___Rule"}], "]"}], ":=", 
  RowBox[{"Apply", "[", 
   RowBox[{"Plus", ",", 
    RowBox[{
     RowBox[{"RiemannData", "[", 
      RowBox[{"expression", ",", "range", ",", "options"}], "]"}], "[", 
     RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747103038927*^9}, 
   3.516747188226427*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"RiemannSum", "[", 
  RowBox[{
   RowBox[{".3", 
    RowBox[{"x", "^", "2"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "1"}], ",", "2"}], "}"}], ",", 
   RowBox[{"Subintervals", "\[Rule]", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516749166101427*^9, 3.516749182117052*^9}}],

Cell[BoxData["0.8578125`"], "Output",
 CellChangeTimes->{{3.516749169820177*^9, 3.516749182585802*^9}, 
   3.516749320757677*^9, 3.516799314546855*^9, 3.519585379644125*^9, 
   3.519585838831625*^9, 3.519588632425375*^9, {3.519588940441*^9, 
   3.51958896940975*^9}, 3.519589090112875*^9, 3.5195994870035*^9, 
   3.5195995933785*^9, {3.519599697612875*^9, 3.51959972597225*^9}, 
   3.5196001425035*^9, 3.5201191102644*^9, 3.520162459020875*^9, 
   3.520162582302125*^9, 3.52016265750525*^9, 3.52016417825525*^9, 
   3.520164742177125*^9, 3.520165219395875*^9, 3.5201652607865*^9, 
   3.52018596706775*^9, 3.520187482474*^9, 3.52018809644275*^9, 
   3.520188546302125*^9, 3.520188845270875*^9, 3.520282741224*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"RiemannSum", "[", 
  RowBox[{
   RowBox[{".3", 
    RowBox[{"x", "^", "2"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "1"}], ",", "2"}], "}"}], ",", 
   RowBox[{"Subintervals", "\[Rule]", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520186396333375*^9, 3.5201864051615*^9}, 
   3.520187867427125*^9}],

Cell[BoxData["0.8578125`"], "Output",
 CellChangeTimes->{3.52018640669275*^9, 3.520187482520875*^9, 
  3.520187731302125*^9, 3.520188096489625*^9, 3.520188546349*^9, 
  3.52018884531775*^9, 3.520282741270875*^9}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"PlotRiemann", "[", 
    RowBox[{"expression_", ",", "range_"}], "]"}], ":=", 
   RowBox[{"PlotRiemann", "[", 
    RowBox[{"expression", ",", "range", ",", 
     RowBox[{"{", "}"}], ",", 
     RowBox[{"{", "}"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"PlotRiemann", "[", 
   RowBox[{"expression_", ",", "range_", ",", 
    RowBox[{"{", "plotoptions___", "}"}], ",", 
    RowBox[{"{", "riemannoptions___", "}"}]}], "]"}], ":=", 
  RowBox[{"Block", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "g", ",", "u", ",", "partition", ",", "heightlist", ",", "sum", ",", 
      "mesh", ",", "integralvalue", ",", "outstring"}], "}"}], ",", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"u", "=", 
       RowBox[{"RiemannData", "[", 
        RowBox[{"expression", ",", "range", ",", "riemannoptions"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"partition", "=", 
       RowBox[{"u", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"heightlist", "=", 
       RowBox[{"u", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"sum", "=", 
       RowBox[{"Apply", "[", 
        RowBox[{"Plus", ",", 
         RowBox[{"u", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"mesh", "=", 
       RowBox[{"u", "[", 
        RowBox[{"[", "4", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"integralvalue", "=", 
       RowBox[{"NIntegrate", "[", 
        RowBox[{"expression", ",", "range"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"outstring", "=", 
       RowBox[{"StringJoin", "[", 
        RowBox[{
        "\"\<\\n\>\"", ",", "partitionstring", ",", "\"\<\\n\>\"", ",", 
         "heightstring", ",", "\"\<\\n\>\"", ",", "\"\<Norm = \>\"", ",", 
         RowBox[{"ToString", "[", "mesh", "]"}], ",", "\"\<\\n\>\"", ",", 
         "\"\<Riemann Sum = \>\"", ",", 
         RowBox[{"ToString", "[", 
          RowBox[{"Chop", "[", "sum", "]"}], "]"}], ",", "\"\<\\n\>\"", ",", 
         "\"\<Definite Integral = \>\"", ",", 
         RowBox[{"ToString", "[", "integralvalue", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"g", ":=", 
       RowBox[{"Plot", "[", 
        RowBox[{"expression", ",", "range", ",", 
         RowBox[{"DisplayFunction", "\[Rule]", "Identity"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", "outstring"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{"RGBColor", "[", 
             RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], "}"}]}], ",", 
         "plotoptions"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"h", ":=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"RGBColor", "[", 
           RowBox[{".8", ",", ".3", ",", "0"}], "]"}], ",", 
          RowBox[{"ShowSlices", "[", 
           RowBox[{"partition", ",", "heightlist"}], "]"}]}], "}"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"g", ",", "h", ",", 
        RowBox[{"DisplayFunction", "\[Rule]", "$DisplayFunction"}]}], "]"}]}],
      ")"}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
  3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
  3.516711615046875*^9}, {3.516747014101427*^9, 3.516747103992052*^9}, {
  3.516747189335802*^9, 3.516747254882677*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"PlotRiemann", "[", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{"4", "-", 
       RowBox[{"x", "^", "2"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"ImageSize", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"350", ",", "350"}], "}"}]}], "}"}], ",", "\n", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Partition", " ", "->", " ", "Uniform"}], ",", 
       RowBox[{"Height", " ", "->", " ", "Midpoint"}], ",", 
       RowBox[{"Subintervals", " ", "\[Rule]", "n"}]}], "}"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "12"}], "}"}], ",", "1", ",", "200", ",", "1"}], 
    "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 12, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 12}, 1, 200, 1}}, Typeset`size$$ = {
    438., {215., 223.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`n$685$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 12}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$685$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> $CellContext`PlotRiemann[
        Sqrt[4 - $CellContext`x^2], {$CellContext`x, 0, 2}, {
        ImageSize -> {350, 350}}, {
        Partition -> $CellContext`Uniform, $CellContext`Height -> \
$CellContext`Midpoint, $CellContext`Subintervals -> $CellContext`n$$}], 
      "Specifications" :> {{{$CellContext`n$$, 12}, 1, 200, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{493., {269., 277.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`PlotRiemann[
         Pattern[$CellContext`expression, 
          Blank[]], 
         Pattern[$CellContext`range, 
          
          Blank[]]] := $CellContext`PlotRiemann[$CellContext`expression, \
$CellContext`range, {}, {}], $CellContext`PlotRiemann[
         Pattern[$CellContext`expression, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], {
          Pattern[$CellContext`plotoptions, 
           BlankNullSequence[]]}, {
          Pattern[$CellContext`riemannoptions, 
           BlankNullSequence[]]}] := 
       Block[{$CellContext`g, $CellContext`u, $CellContext`partition, \
$CellContext`heightlist, $CellContext`sum, $CellContext`mesh, \
$CellContext`integralvalue, $CellContext`outstring}, $CellContext`u = \
$CellContext`RiemannData[$CellContext`expression, $CellContext`range, \
$CellContext`riemannoptions]; $CellContext`partition = 
          Part[$CellContext`u, 1]; $CellContext`heightlist = 
          Part[$CellContext`u, 2]; $CellContext`sum = Apply[Plus, 
            Part[$CellContext`u, 3]]; $CellContext`mesh = 
          Part[$CellContext`u, 4]; $CellContext`integralvalue = 
          NIntegrate[$CellContext`expression, $CellContext`range]; \
$CellContext`outstring = 
          StringJoin[
           "\n", $CellContext`partitionstring, 
            "\n", $CellContext`heightstring, "\n", "Norm = ", 
            ToString[$CellContext`mesh], "\n", "Riemann Sum = ", 
            ToString[
             Chop[$CellContext`sum]], "\n", "Definite Integral = ", 
            ToString[$CellContext`integralvalue]]; $CellContext`g := 
          Plot[$CellContext`expression, $CellContext`range, DisplayFunction -> 
            Identity, PlotLabel -> $CellContext`outstring, PlotStyle -> {{
               RGBColor[0, 0, 1]}}, $CellContext`plotoptions]; $CellContext`h := 
          Graphics[{
             RGBColor[0.8, 0.3, 0], 
             $CellContext`ShowSlices[$CellContext`partition, \
$CellContext`heightlist]}]; 
         Show[$CellContext`g, $CellContext`h, 
           DisplayFunction -> $DisplayFunction]], $CellContext`RiemannData[
         Pattern[$CellContext`expression, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`options, 
          BlankNullSequence[Rule]]] := Block[{$CellContext`M = ReplaceAll[
            ReplaceAll[Mesh, {$CellContext`options}], 
            Options[$CellContext`RiemannData]], $CellContext`S = ReplaceAll[
            ReplaceAll[$CellContext`Subintervals, {$CellContext`options}], 
            Options[$CellContext`RiemannData]], $CellContext`P = ReplaceAll[
            ReplaceAll[Partition, {$CellContext`options}], 
            Options[$CellContext`RiemannData]], $CellContext`variable = 
          Part[$CellContext`range, 1], $CellContext`intervallength = 
          Part[$CellContext`range, 3] - 
           Part[$CellContext`range, 2]}, $CellContext`list = 
          Switch[$CellContext`P, $CellContext`Uniform, 
            $CellContext`UniformPartition[$CellContext`range, $CellContext`S],
             Random, 
            $CellContext`RandomPartition[$CellContext`range, $CellContext`M]]; 
         Join[
           Join[{
             Part[$CellContext`list, 1]}, 
            $CellContext`Slices[$CellContext`expression, \
$CellContext`variable, 
             Part[$CellContext`list, 1], $CellContext`options]], {
            Part[$CellContext`list, 2]}]], 
       Options[$CellContext`RiemannData] := {$CellContext`Subintervals -> 12, 
         Partition -> $CellContext`Uniform, 
         Mesh -> $CellContext`intervallength/
          6., $CellContext`Height -> $CellContext`Midpoint}, \
$CellContext`list = {{-1., -0.25, 0.5, 1.25, 2.}, 
         0.75}, $CellContext`UniformPartition[
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`number, 
          Blank[]]] := Module[{$CellContext`bottom = N[
            Part[$CellContext`range, 2]], $CellContext`top = N[
            
            Part[$CellContext`range, 
             3]], $CellContext`actualmesh}, $CellContext`actualmesh = \
($CellContext`top - $CellContext`bottom)/$CellContext`number; \
$CellContext`partitionstring = StringJoin["Uniform partition into ", 
            ToString[$CellContext`number], " subintervals"]; Return[{
            N[
             
             Range[$CellContext`bottom, $CellContext`top, \
$CellContext`actualmesh]], $CellContext`actualmesh}]], \
$CellContext`partitionstring = 
       "Uniform partition into 4 subintervals", $CellContext`RandomPartition[
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`mesh, 
          Blank[]]] := 
       Module[{$CellContext`u = Part[$CellContext`range, 2], $CellContext`top = 
          Part[$CellContext`range, 3], $CellContext`list = {
            
            Part[$CellContext`range, 
             2]}, $CellContext`v, $CellContext`newlist, \
$CellContext`actualmesh = 0}, 
         While[$CellContext`u + $CellContext`mesh < $CellContext`top, \
$CellContext`v = $CellContext`u + 
             Random[Real, $CellContext`mesh]; $CellContext`actualmesh = 
            Max[$CellContext`actualmesh, $CellContext`v - $CellContext`u]; \
$CellContext`newlist := 
            Append[$CellContext`list, $CellContext`v]; $CellContext`u = \
$CellContext`v; $CellContext`list = $CellContext`newlist]; \
$CellContext`partitionstring = 
          StringJoin["Random partition with maximum norm ", 
            ToString[$CellContext`mesh]]; $CellContext`actualmesh = 
          Max[$CellContext`actualmesh, $CellContext`top - 
            Last[$CellContext`list]]; Return[{
            
            Append[$CellContext`list, $CellContext`top], \
$CellContext`actualmesh}]], $CellContext`Slices[
         Pattern[$CellContext`expression, 
          Blank[]], 
         Pattern[$CellContext`variable, 
          Blank[]], 
         Pattern[$CellContext`list, 
          Blank[]], 
         Pattern[$CellContext`options, 
          BlankNullSequence[Rule]]] := 
       Module[{$CellContext`i = 
          1, $CellContext`startlist = $CellContext`list, \
$CellContext`leftlist, $CellContext`rightlist, $CellContext`widthlist, \
$CellContext`selectlist, $CellContext`arealist, $CellContext`heightlist, \
$CellContext`valuelist, $CellContext`opt = ReplaceAll[
            ReplaceAll[$CellContext`Height, {$CellContext`options}], 
            Options[$CellContext`RiemannData]], $CellContext`f = 
          Function[$CellContext`variable, $CellContext`expression]}, \
$CellContext`leftlist = Drop[$CellContext`list, -1]; $CellContext`rightlist = 
          Drop[$CellContext`list, 
            1]; $CellContext`widthlist = $CellContext`rightlist - \
$CellContext`leftlist; $CellContext`selectlist = 
          Switch[$CellContext`opt, $CellContext`LeftSide, \
$CellContext`heightstring = 
             "Left edge of subinterval used for height"; \
$CellContext`leftlist, $CellContext`RightSide, $CellContext`heightstring = 
             "Right edge of subinterval used for height"; \
$CellContext`rightlist, $CellContext`Midpoint, $CellContext`heightstring = 
             "Midpoint of subinterval used for height"; $CellContext`leftlist + 
             0.5 $CellContext`widthlist, 
            Random, $CellContext`heightstring = 
             "Random point in subinterval used for height"; \
$CellContext`leftlist + 
             Map[Random[
               Real, #]& , $CellContext`widthlist]]; $CellContext`heightlist = 
          Map[$CellContext`f, $CellContext`selectlist]; $CellContext`arealist = \
$CellContext`heightlist $CellContext`widthlist; {$CellContext`heightlist, \
$CellContext`arealist}], $CellContext`heightstring = 
       "Midpoint of subinterval used for height", $CellContext`h := Graphics[{
          RGBColor[0.8, 0.3, 0], 
          $CellContext`ShowSlices[$CellContext`partition, \
$CellContext`heightlist]}], $CellContext`ShowSlices[
         Pattern[$CellContext`partition, 
          Blank[]], 
         Pattern[$CellContext`heightlist, 
          Blank[]]] := Table[
         $CellContext`Boxx[0, 
          Part[$CellContext`heightlist, $CellContext`i], 
          Part[$CellContext`partition, $CellContext`i], 
          Part[$CellContext`partition, $CellContext`i + 1]], {$CellContext`i, 
          1, Length[$CellContext`partition] - 1}], $CellContext`Boxx[
         Pattern[$CellContext`bottom, 
          Blank[]], 
         Pattern[$CellContext`top, 
          Blank[]], 
         Pattern[$CellContext`left, 
          Blank[]], 
         Pattern[$CellContext`right, 
          Blank[]]] := 
       Line[{{$CellContext`left, $CellContext`bottom}, {$CellContext`right, \
$CellContext`bottom}, {$CellContext`right, $CellContext`top}, \
{$CellContext`left, $CellContext`top}, {$CellContext`left, \
$CellContext`bottom}}], $DisplayFunction = Identity}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5196000303785*^9, 3.519600142566*^9, 
  3.5201191104983997`*^9, 3.520162459895875*^9, 3.520162582364625*^9, 
  3.520162657708375*^9, 3.52016417831775*^9, 3.52016474256775*^9, 
  3.520165219458375*^9, 3.520165261177125*^9, 3.5201859675365*^9, 
  3.520187482599*^9, 3.520188097208375*^9, 3.520188546458375*^9, 
  3.520188845724*^9, 3.52028274169275*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PlotRiemann", "[", 
  RowBox[{
   RowBox[{"Sin", "[", "x", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"ImageSize", "\[Rule]", "Large"}], "}"}], ",", "\n", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Partition", " ", "->", " ", "Random"}], ",", 
     RowBox[{"Height", " ", "->", " ", "Random"}]}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
WQjmSrO1dK793/8D/wMuq3uF
      "]]}}, 
   {RGBColor[0.8, 0.3, 0], 
    LineBox[{{0, 0}, {0.31360090733854257`, 0}, {0.31360090733854257`, 
      0.012801679577879551`}, {0, 0.012801679577879551`}, {0, 0}}], 
    LineBox[{{0.31360090733854257`, 0}, {0.7136908545170709, 0}, {
      0.7136908545170709, 0.5206713921378004}, {0.31360090733854257`, 
      0.5206713921378004}, {0.31360090733854257`, 0}}], 
    LineBox[{{0.7136908545170709, 0}, {1.110009270601987, 0}, {
      1.110009270601987, 0.8646440620760999}, {0.7136908545170709, 
      0.8646440620760999}, {0.7136908545170709, 0}}], 
    LineBox[{{1.110009270601987, 0}, {1.5702132809110712`, 0}, {
      1.5702132809110712`, 0.9414253477018304}, {1.110009270601987, 
      0.9414253477018304}, {1.110009270601987, 0}}], 
    LineBox[{{1.5702132809110712`, 0}, {1.8601575391697316`, 0}, {
      1.8601575391697316`, 0.9973473397235777}, {1.5702132809110712`, 
      0.9973473397235777}, {1.5702132809110712`, 0}}], 
    LineBox[{{1.8601575391697316`, 0}, {2.313382430863169, 0}, {
      2.313382430863169, 0.7976240285925518}, {1.8601575391697316`, 
      0.7976240285925518}, {1.8601575391697316`, 0}}], 
    LineBox[{{2.313382430863169, 0}, {2.729461422202389, 0}, {
      2.729461422202389, 0.6744863868152093}, {2.313382430863169, 
      0.6744863868152093}, {2.313382430863169, 0}}], 
    LineBox[NCache[{{2.729461422202389, 0}, {Pi, 0}, {
       Pi, 0.05898260462161894}, {2.729461422202389, 0.05898260462161894}, {
       2.729461422202389, 0}}, {{2.729461422202389, 0}, {
       3.141592653589793, 0}, {3.141592653589793, 0.05898260462161894}, {
       2.729461422202389, 0.05898260462161894}, {2.729461422202389, 0}}]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  ImageSize->Large,
  PlotLabel->FormBox[
   "\"\\nRandom partition with maximum norm 0.523599\\nRandom point in \
subinterval used for height\\nNorm = 0.460204\\nRiemann Sum = \
1.94388\\nDefinite Integral = 2.\"", TraditionalForm],
  PlotRange->
   NCache[{{0, Pi}, {0., 0.9999999707682925}}, {{0, 3.141592653589793}, {0., 
     0.9999999707682925}}],
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.519600048206625*^9, 3.519600142800375*^9, 
  3.5201191119336*^9, 3.520162461458375*^9, 3.520162582599*^9, 
  3.520162657802125*^9, 3.520164178583375*^9, 3.52016474319275*^9, 
  3.52016521969275*^9, 3.520165261958375*^9, 3.520185968145875*^9, 
  3.5201874829115*^9, 3.5201880979115*^9, 3.520188546849*^9, 
  3.52018884625525*^9, 3.520282742349*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["CloudList", "Subsection",
 CellChangeTimes->{{3.5195880325035*^9, 3.51958804634725*^9}}],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"CloudList", 
      RowBox[{"{", 
       RowBox[{"e", ",", " ", "i", ",", "n"}]}]}], "]"}], " ", "produces", 
    " ", "n", " ", "points", 
    RowBox[{"(", 
     RowBox[{"m", ",", " ", 
      RowBox[{
      "riemann", " ", "sum", " ", "of", " ", "expression", " ", "e", " ", 
       "on", " ", "the", " ", "interval", " ", "i"}]}], ")"}]}], ",", " ", 
   RowBox[{
   "where", " ", "the", " ", "Riemann", " ", "Sum", " ", "has", " ", "random",
     " ", "mesh", " ", "m", " ", "with", " ", "random", " ", "choice", " ", 
    "of", " ", "points", " ", "in", " ", "each", " ", 
    RowBox[{"subinterval", "."}]}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.520164834614625*^9, 3.52016503475525*^9}}],

Cell[BoxData[
 RowBox[{"Remove", "[", "CloudList", "]"}]], "Input",
 CellChangeTimes->{{3.519587517925375*^9, 3.519587525581625*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"CloudList", "[", 
   RowBox[{"expression_", ",", "range_", ",", "n_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"l", "=", 
       RowBox[{"{", "}"}]}], ",", "s", ",", "mesh", ",", "a", ",", "b", ",", 
      "u"}], "}"}], ",", 
    RowBox[{
     RowBox[{"a", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", 
     RowBox[{"b", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Do", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"mesh", "=", 
          RowBox[{"Random", "[", 
           RowBox[{"Real", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "-", "a"}], ")"}], "/", "5"}]}], "}"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"u", "=", 
          RowBox[{"RiemannData", "[", 
           RowBox[{"expression", ",", "range", ",", 
            RowBox[{"Partition", "\[Rule]", "Random"}], ",", 
            RowBox[{"Mesh", "\[Rule]", "mesh"}], ",", 
            RowBox[{"Height", "\[Rule]", "Random"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"s", "=", 
          RowBox[{"Apply", "[", 
           RowBox[{"Plus", ",", 
            RowBox[{"u", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"l", "=", 
          RowBox[{"Append", "[", 
           RowBox[{"l", ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"u", "[", 
               RowBox[{"[", "4", "]"}], "]"}], ",", "s"}], "}"}]}], "]"}]}]}],
         ")"}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ";", 
     "\[IndentingNewLine]", "l"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.482444309179576*^9, 3.4824443121965756`*^9}, {
   3.482445727166*^9, 3.482445727509*^9}, {3.516711607703125*^9, 
   3.516711615046875*^9}, {3.516747014101427*^9, 3.516747108742052*^9}, {
   3.516749256648302*^9, 3.516749257288927*^9}, {3.516749374632677*^9, 
   3.516749395773302*^9}, {3.516749496445177*^9, 3.516749519570177*^9}, {
   3.516749600007677*^9, 3.516749605757677*^9}, {3.516799552995764*^9, 
   3.5167995803059916`*^9}, {3.519587469612875*^9, 3.5195874725035*^9}, 
   3.519587506956625*^9, {3.519588009300375*^9, 3.519588012769125*^9}, 
   3.51958827065975*^9, 3.519588509269125*^9, 3.519589083925375*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"CloudList", "[", 
  RowBox[{
   RowBox[{"Sin", "[", "x", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "8"}], "]"}]], "Input",
 CellChangeTimes->{{3.516799455238273*^9, 3.5167994754240932`*^9}, {
   3.516799585743039*^9, 3.516799622849327*^9}, {3.519586741831625*^9, 
   3.51958674284725*^9}, 3.519586894925375*^9, {3.51958753334725*^9, 
   3.519587538300375*^9}, 3.51958854109725*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0.535240879232931`", ",", "2.012930466712187`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.03142877975128755`", ",", "1.999043422520565`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.12039407863621499`", ",", "2.0013144241079117`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.3622518291837409`", ",", "1.9877108946936306`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.23876768932272374`", ",", "1.9874614746347565`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.22259655103083187`", ",", "1.9834537248331996`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.5531439047262081`", ",", "1.9510127060319824`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.10895209536353434`", ",", "1.9955923881326028`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.516799362230387*^9, {3.516799455769479*^9, 3.5167994760334177`*^9}, {
   3.5167995648854*^9, 3.5167996233805323`*^9}, 3.519585379691*^9, 
   3.519585838894125*^9, 3.519586744050375*^9, 3.519586895331625*^9, 
   3.51958751203475*^9, 3.519587543800375*^9, 3.51958805990975*^9, {
   3.519588141487875*^9, 3.51958814759725*^9}, 3.51958827765975*^9, 
   3.519588632487875*^9, {3.51958894053475*^9, 3.51958896947225*^9}, 
   3.519589090206625*^9, 3.519599487081625*^9, 3.5195995935035*^9, {
   3.519599697675375*^9, 3.519599726081625*^9}, 3.519600142862875*^9, 
   3.5201191119960003`*^9, 3.520162462208375*^9, 3.520162582645875*^9, 
   3.520162657864625*^9, 3.5201641786615*^9, 3.520164743302125*^9, 
   3.52016521975525*^9, 3.5201652621615*^9, 3.520185968333375*^9, 
   3.520187483114625*^9, 3.520188098333375*^9, 3.520188546989625*^9, 
   3.520188846349*^9, 3.520282742474*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"CloudList", "[", 
    RowBox[{
     RowBox[{"Sin", "[", "x", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "300"}], "]"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"450", ",", "450"}], "}"}]}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".6"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1.5", ",", "2.5"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516749531710802*^9, 3.516749535851427*^9}, {
   3.516749571976427*^9, 3.516749578773302*^9}, {3.516749621304552*^9, 
   3.516749624007677*^9}, 3.5167993035633936`*^9, 3.516799343888163*^9, {
   3.5167996435976005`*^9, 3.5167996600493565`*^9}, {3.519586080331625*^9, 
   3.5195860993785*^9}, 3.519586758394125*^9, {3.51958755684725*^9, 
   3.519587573425375*^9}, {3.519587616487875*^9, 3.51958761665975*^9}, {
   3.519587832706625*^9, 3.51958786197225*^9}, {3.519587934441*^9, 
   3.51958793453475*^9}, {3.519588071519125*^9, 3.519588113894125*^9}, 
   3.519588549081625*^9, {3.519589261925375*^9, 3.519589298566*^9}, {
   3.519599785941*^9, 3.519599786612875*^9}}],

Cell[BoxData[
 GraphicsBox[
  {Hue[0.67, 0.6, 0.6], PointBox[CompressedData["
1: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
tE+nXPhrIfMGnqg1DbvmE/A/RSPJ/Q==
    "]]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  ImageSize->{450, 450},
  PlotRange->{{0, 0.6}, {1.5, 2.5}},
  PlotRangeClipping->True]], "Output",
 CellChangeTimes->{
  3.5167993452786727`*^9, 3.516799499250236*^9, {3.5167996445193987`*^9, 
   3.5167996610180264`*^9}, 3.519585380894125*^9, 3.51958583915975*^9, 
   3.519586101581625*^9, 3.519586759566*^9, {3.519587562050375*^9, 
   3.519587581706625*^9}, 3.51958761847225*^9, {3.5195878413785*^9, 
   3.519587867206625*^9}, {3.51958791678475*^9, 3.519587936066*^9}, 
   3.519588020581625*^9, {3.519588059956625*^9, 3.519588091581625*^9}, 
   3.5195881225035*^9, 3.519588278050375*^9, 3.51958863322225*^9, {
   3.519588940941*^9, 3.519588969862875*^9}, 3.51958909840975*^9, {
   3.519589292456625*^9, 3.519589300550375*^9}, 3.519599488941*^9, 
   3.519599594316*^9, {3.5195996985035*^9, 3.51959972703475*^9}, 
   3.5195997881285*^9, 3.51960014397225*^9, 3.5201191124952*^9, 
   3.520162463677125*^9, 3.5201625832865*^9, 3.520162658614625*^9, 
   3.520164179614625*^9, 3.52016474463025*^9, 3.520165221145875*^9, 
   3.520165281114625*^9, 3.5201860185365*^9, 3.520187485395875*^9, 
   3.520188099708375*^9, 3.520188548099*^9, 3.520188847724*^9, 
   3.52028274344275*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["MidpointCloudList", "Subsection",
 CellChangeTimes->{{3.516800121885928*^9, 3.516800130557082*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "This", " ", "produces", " ", "a", " ", "cloud", " ", "of", " ", "midpoint",
    " ", "Riemann", " ", "sums", " ", "with", " ", "random", " ", 
   RowBox[{"mesh", "."}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.520165050802125*^9, 3.520165091020875*^9}}],

Cell[BoxData[
 RowBox[{"Remove", "[", "MidpointCloudList", "]"}]], "Input",
 CellChangeTimes->{{3.516800109871303*^9, 3.516800117651906*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"CloudList", "[", 
   RowBox[{"expression_", ",", "range_", ",", "n_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"l", "=", 
       RowBox[{"{", "}"}]}], ",", "s", ",", "mesh", ",", "a", ",", "b", ",", 
      "u"}], "}"}], ",", 
    RowBox[{
     RowBox[{"a", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", 
     RowBox[{"b", "=", 
      RowBox[{"range", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Do", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"mesh", "=", 
          RowBox[{"Random", "[", 
           RowBox[{"Real", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"(", 
               RowBox[{"b", "-", "a"}], ")"}]}], "}"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"u", "=", 
          RowBox[{"RiemannData", "[", 
           RowBox[{"expression", ",", "range", ",", 
            RowBox[{"Partition", "\[Rule]", "Random"}], ",", 
            RowBox[{"Mesh", "\[Rule]", "mesh"}], ",", 
            RowBox[{"Height", "\[Rule]", "Random"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"s", "=", 
          RowBox[{"Apply", "[", 
           RowBox[{"Plus", ",", 
            RowBox[{"u", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"l", "=", 
          RowBox[{"Append", "[", 
           RowBox[{"l", ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"u", "[", 
               RowBox[{"[", "4", "]"}], "]"}], ",", "s"}], "}"}]}], "]"}]}]}],
         ")"}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ";", 
     "\[IndentingNewLine]", "l"}]}], "]"}]}]], "Input",
 CellChangeTimes->{3.520187470849*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"MidpointCloudList", "[", 
   RowBox[{"expression_", ",", " ", "range_", ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"l", " ", "=", " ", 
       RowBox[{"{", "}"}]}], ",", " ", "s", ",", " ", "mesh", ",", " ", "a", 
      ",", " ", "b", ",", " ", "u"}], "}"}], ",", " ", 
    RowBox[{
     RowBox[{"a", " ", "=", " ", 
      RowBox[{"range", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", " ", 
     RowBox[{"b", " ", "=", " ", 
      RowBox[{"range", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\n", "  ", 
     RowBox[{"Do", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"mesh", "=", 
          RowBox[{"Random", "[", 
           RowBox[{"Real", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"(", 
               RowBox[{"b", "-", "a"}], ")"}]}], "}"}]}], "]"}]}], ";", "\n", 
         "    ", 
         RowBox[{"u", " ", "=", " ", 
          RowBox[{"RiemannData", "[", 
           RowBox[{"expression", ",", " ", "range", ",", " ", 
            RowBox[{"Partition", " ", "->", " ", "Random"}], ",", " ", 
            RowBox[{"Mesh", "\[Rule]", "mesh"}], ",", " ", 
            RowBox[{"Height", " ", "->", " ", "Midpoint"}]}], "]"}]}], ";", 
         " ", "\n", "    ", 
         RowBox[{"s", " ", "=", " ", 
          RowBox[{"Apply", "[", 
           RowBox[{"Plus", ",", " ", 
            RowBox[{"u", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], ";", "\n", "    ", 
         RowBox[{"l", " ", "=", " ", 
          RowBox[{"Append", "[", 
           RowBox[{"l", ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"u", "[", 
               RowBox[{"[", "4", "]"}], "]"}], ",", " ", "s"}], "}"}]}], 
           "]"}]}]}], ")"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}]}], "]"}], ";", 
     "\n", "  ", "l"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.516800494183076*^9, 3.516800535226536*^9}, {
   3.5168006066112213`*^9, 3.5168006328746605`*^9}, 3.519588342862875*^9, 
   3.519588466316*^9, {3.519588713831625*^9, 3.5195887152535*^9}, 
   3.51958896440975*^9, {3.5195890535035*^9, 3.519589053581625*^9}, {
   3.51959954447225*^9, 3.5195995448785*^9}, {3.51959967072225*^9, 
   3.519599671441*^9}, {3.51959982640975*^9, 3.5195998268785*^9}, 
   3.52018747669275*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Random", "[", 
  RowBox[{"Integer", ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "100"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData["2"], "Output",
 CellChangeTimes->{
  3.516799799897095*^9, 3.516800151508464*^9, 3.5168003052456713`*^9, 
   3.5168003728494215`*^9, 3.516800542663417*^9, 3.516800642592602*^9, 
   3.519585381050375*^9, 3.519585839269125*^9, 3.519588355112875*^9, 
   3.51958863334725*^9, {3.519588941191*^9, 3.519588969941*^9}, 
   3.519589099487875*^9, 3.519599489081625*^9, 3.51959959534725*^9, {
   3.5195996986285*^9, 3.519599727206625*^9}, 3.51960014409725*^9, 
   3.52011911262*^9, 3.520162463974*^9, 3.52016258344275*^9, 
   3.520162658724*^9, 3.5201641797865*^9, 3.5201647479115*^9, 
   3.520165221458375*^9, 3.520165291520875*^9, 3.520186026614625*^9, 
   3.520187485520875*^9, 3.520188101270875*^9, 3.520188548270875*^9, 
   3.520188848395875*^9, 3.520282743677125*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"MidpointCloudList", "[", 
   RowBox[{
    RowBox[{"Sin", "[", "x", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "3"}], "]"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{
  3.516799245052637*^9, {3.516799699327338*^9, 3.516799753307222*^9}, {
   3.516799876625086*^9, 3.516799888327237*^9}, 3.5167999498221207`*^9, {
   3.516800060297303*^9, 3.516800060547282*^9}, 3.519585432816*^9, 
   3.519588564612875*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1.6956232990527724`", ",", "2.2281269492875224`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2.020955670594126`", ",", "2.307492297096669`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.4443775515041012`", ",", "2.0098634876387496`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.516799889577133*^9, 3.5167999504939394`*^9, {3.51680006171906*^9, 
   3.51680010234068*^9}, 3.516800151539711*^9, 3.5168002325954666`*^9, 
   3.5168002631398*^9, 3.5168003053550377`*^9, 3.516800372990035*^9, 
   3.5168005427884064`*^9, 3.516800642639473*^9, {3.519585375425375*^9, 
   3.519585381081625*^9}, {3.519585424831625*^9, 3.519585436737875*^9}, 
   3.519585839316*^9, 3.519588355144125*^9, 3.5195886333785*^9, {
   3.519588941237875*^9, 3.51958896997225*^9}, 3.519589099831625*^9, 
   3.51959948934725*^9, 3.519599595487875*^9, {3.51959969865975*^9, 
   3.51959972728475*^9}, 3.5196001441285*^9, 3.5201191126512003`*^9, 
   3.520162464020875*^9, 3.520162583489625*^9, 3.520162658770875*^9, 
   3.52016417981775*^9, 3.520164747958375*^9, 3.520165221489625*^9, 
   3.520165291552125*^9, 3.520186029552125*^9, 3.52018748556775*^9, 
   3.520188101333375*^9, 3.52018854831775*^9, 3.52018884850525*^9, 
   3.520282743724*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MidpointCloudList", "[", 
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{"4", "-", 
     RowBox[{"x", "^", "2"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "3"}], "]"}]], "Input",
 CellChangeTimes->{3.519585647612875*^9, 3.519585677862875*^9, 
  3.519588569941*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1.0780822197832174`", ",", "3.25388882634154`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.6001780871593133`", ",", "3.180641040939012`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1.2195473786798616`", ",", "3.284371850779462`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.519585650269125*^9, 3.519585678425375*^9}, 
   3.51958583934725*^9, 3.519588355191*^9, 3.51958863340975*^9, {
   3.519588941300375*^9, 3.519588970081625*^9}, 3.519589100394125*^9, 
   3.519599489425375*^9, 3.519599595706625*^9, {3.519599698691*^9, 
   3.519599727331625*^9}, 3.519600144175375*^9, 3.520119112698*^9, 
   3.520162464099*^9, 3.5201625835365*^9, 3.520162658802125*^9, 
   3.520164179864625*^9, 3.52016474800525*^9, 3.520165221552125*^9, 
   3.520165291599*^9, 3.52018602969275*^9, 3.520187485614625*^9, 
   3.52018810138025*^9, 3.520188548364625*^9, 3.520188849364625*^9, 
   3.520282743770875*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"MidpointCloudList", "[", 
    RowBox[{
     RowBox[{"Sin", "[", "x", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "300"}], "]"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"450", ",", "450"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.516749690351427*^9, 3.516749725070177*^9}, {
   3.516799160419054*^9, 3.5167992181642494`*^9}, {3.5167998997794094`*^9, 
   3.5167999180747623`*^9}, 3.5168003660374885`*^9, {3.5168006533729553`*^9, 
   3.5168006632627573`*^9}, {3.516800720711102*^9, 3.5168007962048206`*^9}, {
   3.5168008364983425`*^9, 3.516800847497428*^9}, {3.516800884572468*^9, 
   3.5168008846818333`*^9}, {3.516800925850283*^9, 3.51680092642836*^9}, {
   3.51958614572225*^9, 3.519586146191*^9}, {3.5195868730035*^9, 
   3.519586879441*^9}, 3.519588574612875*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
8P8uRIJi
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 2.},
  ImageSize->{450, 450},
  PlotRange->{{0., 2.9648544134627923`}, {2., 2.968883403953256}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5167992107273684`*^9, 3.5167992192579083`*^9}, 
   3.5167993147187157`*^9, {3.5167999106691284`*^9, 3.516799919074679*^9}, 
   3.5168001541019983`*^9, {3.5168002829662757`*^9, 3.5168003098077917`*^9}, 
   3.5168003731462717`*^9, 3.516800543288365*^9, {3.5168006427332153`*^9, 
   3.516800664825127*^9}, {3.516800722523451*^9, 3.5168007974547167`*^9}, 
   3.5168008507315335`*^9, 3.516800885916106*^9, 3.5168009278032455`*^9, 
   3.51958538128475*^9, 3.519585839550375*^9, 3.51958614790975*^9, 
   3.519586880191*^9, 3.519588355441*^9, 3.519588633675375*^9, {
   3.5195889416285*^9, 3.51958897034725*^9}, 3.519589100675375*^9, 
   3.519599490175375*^9, 3.519599595941*^9, {3.51959969897225*^9, 
   3.519599727644125*^9}, 3.5201191135248003`*^9, 3.520162464864625*^9, 
   3.5201625844115*^9, 3.5201626601615*^9, 3.520164180833375*^9, {
   3.5201652127865*^9, 3.5201652384115*^9}, 3.520165292177125*^9, 
   3.520186030958375*^9, 3.520187487583375*^9, 3.520188112395875*^9, 
   3.520188548833375*^9, 3.520188849833375*^9, 3.520282744114625*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"CloudList", "[", 
    RowBox[{
     RowBox[{"Sin", "[", "x", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "300"}], "]"}], ",", 
   RowBox[{"PlotStyle", "->", "Blue"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
bcmeuMmLuFIeJVDBAdE2iUdz18jof/qN9eY=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  PlotRange->{{0., 3.047308283161247}, {0, 3.123838448965535}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.519586793331625*^9, 3.519587034066*^9, 3.519588355487875*^9, 
   3.51958863409725*^9, {3.5195889422535*^9, 3.519588970800375*^9}, 
   3.5195891048785*^9, 3.519599493941*^9, 3.519599596800375*^9, 
   3.5195996998785*^9, 3.51959973190975*^9, 3.5201191150536003`*^9, 
   3.520162465895875*^9, 3.520162596552125*^9, 3.520162661802125*^9, 
   3.520164181833375*^9, 3.5201653100365*^9, 3.52018603544275*^9, 
   3.520187489145875*^9, 3.52018811275525*^9, 3.520188549224*^9, 
   3.520188850302125*^9, 3.520282744552125*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Show", "[", 
   RowBox[{
    RowBox[{"Graphics", "[", 
     RowBox[{"ListPlot", "[", 
      RowBox[{
       RowBox[{"MidpointCloudList", "[", 
        RowBox[{
         RowBox[{"Sin", "[", "x", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}]}], "]"}], 
     "]"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"CloudList", "[", 
       RowBox[{
        RowBox[{"Sin", "[", "x", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "300"}], "]"}], ",", 
      RowBox[{"PlotStyle", "->", "Blue"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}]}], "]"}]}], 
   "]"}], " "}]], "Input",
 CellChangeTimes->{{3.5168009476453447`*^9, 3.5168009574414043`*^9}, {
   3.5168009884544487`*^9, 3.5168009921103945`*^9}, {3.516801100648239*^9, 
   3.5168011015231657`*^9}, {3.516801145644495*^9, 3.5168012143575273`*^9}, {
   3.516801252713711*^9, 3.516801303490736*^9}, {3.519586156456625*^9, 
   3.519586160691*^9}, {3.51958622890975*^9, 3.519586234675375*^9}, {
   3.519586417550375*^9, 3.519586431925375*^9}, {3.519586523675375*^9, 
   3.519586564737875*^9}, {3.51958662434725*^9, 3.51958662472225*^9}, {
   3.519586659941*^9, 3.519586664519125*^9}, {3.519587061112875*^9, 
   3.519587068441*^9}, 3.5195885846285*^9, 3.520162717614625*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[1, 0, 0], PointBox[CompressedData["
1:eJwVlH881Hccxz/f7zndYqltRks/rJaREMqP4v2eMDNMsoxkl1+x69cq6/Kj
nTrmNjuELWa1NK2hptos+ZGLyY44QuIImR9xdlS449h3f3wenz/ej8/j8fq8
X6/X0zj0iF8ETQgJZ87/t9XL78fe3DgDwWX8Al+awuhjqVbCLxdgn2y2tMGE
xvNaJubFrAlINrDNf3qAoEDzW99ez24453W80HQFwbwelfXOeQVwx9aSLczc
Y77B3MTvKRiVuIpS3yE4sEtxSxT8HPICnnjfaCR4NKnd5VFgI6RemXyk0CKY
1sSnNMtpLD9zkHc4iIUlXzdL9AonwKlt7Q8iN4Kjok2ppW2LMOLcu/fdEBpL
z9eGfKu7CFz9d1507aCxd4D/2V2rMbgwUuPlE0gw5LuM6/xyNfw8lK3v1UQh
f/eCcXfcPThqGU76KYJX9kzzn95XQ7KbzskOZj5SlkvN+E6CLXdkXZCQYG7C
mi0r3Gm8KrceuMJnYbJOvOTAqgXQvRqQufwtGuvlRekCcQPcUPHvTDD6lX89
PtYiqwUXgYnNKE0wWLTlixDpHGSWPVRW9lAo3HP9FaPweeCZxtwcGqVwoE83
NpE/B1kTZRLXTgrjo/YX5aarQNnK22VSR6GnQxPnl3CC6kMltvapNE7LZf7S
zSpIiBzIcLhEIVvMzYo8qAZB5M7ftjdQeF3nqfu6VwdgmZMy1uhtghu9Ej7K
cx0Ew+z9IcMWBKtPe1IokoKJaniDN4tguFAYmCr7B448tsnM2Eyw9iq7wNix
Dk6O02PjjP7ZJk7a5gglfNdRNDUeR/BAapzRjN4LuODbU/lLNUE61N23+LYK
Qvw0zbcYvd4LzkWcqHmQNrUHOT+j8HlsZP9K8XPYcIa7xKOZoHbl3l08Lwr9
BNdb7IxY6BFdnPiBiwK2Kb3SYxwIOracmJJEEww46ha/NYLGvjhPaX1iI4gt
P953mdmvVhgLPF9XgG+6QcFhLqN/FXs19qig3DWyKPA+hb+nxGy0398NzqHh
hvmvE5wqyvvc+PY4nDX9gZP4OcFStnaHvocWFpwvXpcxpIXiB4M35YeYnN+P
iexlsTBj5e+WBVEUmh/NKnahWKg8odE0yZWg9jk01nONoCSc6y/ePgdljv6J
Bj7M/rUeOw6eWYC7bn2W7Uz+OmHqw73XBmE8Jy40z4yg/LUKb2fuDBhcsvvb
SEkwLipbP81GBT89fJQwZcj4PbDP4vjXSnDOeEVy+zOCSXPuh5N11cAdqreK
qKcwscbW5KNL2lhtusEnrEobL2qFqgPSNBA2eWM+jUPjWW/elon1GqjdZFP6
lphCTlSmvGV6HOjMDgKMX61/+TfEn2BjQmDVH6I7bKwS87Te3z0Lo5nR9cNL
KHwh2zrtntsFdoHfR+sz/TVPceo80vYSgnJOfhJlTeGzSdbUfKMcfJs1nZXM
PFSWcLs0cATGoXrPst0E/e6bHqn0mYJyRXI25zTzP73UH+k/1TDI6vx0FdOn
e/7HTlkZv4CcMLZgWQ3B5Q6NiXcVdaBqU21/yeTLoqs971yrCmwiLu/pSqbw
TkVw0umh5/DqT/f43WMEcwZr8sOTl6DZwx8F3hlLsHq4VeD+Rj+IDaUic2OC
F3i/xgjzZmG/9fHp/kgKaX/Pr3Zly0B812WFmzbBTU8e/PF+HIUOx09fvLiU
4Uk/d1tn1z9gLTdsXMrkreOqQ4BoTgNSKz2zEX0asaNwdIfdZRAWS2ZWE4LE
/bxzgnwK5mxS6is6CZrF5YjeS+qCKvrbmGodhh9RbwetTGGj7zOH11qkbEzv
zj1LxVfA0tzQDdPM+yJH0Dz6UAUdJmoq1IPCwCvbhMtOvYQdId84uetS+KdB
0tiCpTYmPDvorxOkjfanhG0FJaPgWrCjiPIhqFufL2ljzUON9WGZxwMKY7cG
t98cVcCaXyUfGwmYvtRx7i1nfChca2RwsYBGr7LCC/nrR+GWYcu/BnYEy5/c
POnTq4RckeKa6GeCUTLxtOXkIjgtiprtwmhc07dtriR2CBYtFKb2tgzPe802
WevVgpXUK3mR4aOFQ+FMlnUr1BZHbK/gEIznLdintPRDna9pVddqhicxvEPm
g+OQNbxmdgXD+/8AF9nQug==
      "]]}, {}}, {{}, 
    {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
      "]]}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 2.},
  PlotRange->{{0., 2.9406216350585734`}, {2., 2.945948605362351}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5168011640492134`*^9, 3.5168011801884956`*^9}, 
   3.5168012174666433`*^9, {3.516801275289957*^9, 3.516801304881245*^9}, 
   3.519585381675375*^9, 3.51958584072225*^9, 3.519586161987875*^9, 
   3.519586236941*^9, 3.51958643334725*^9, 3.51958652528475*^9, 
   3.51958656690975*^9, 3.51958663072225*^9, 3.519586666925375*^9, {
   3.5195869871285*^9, 3.51958699434725*^9}, 3.51958704697225*^9, 
   3.5195883557535*^9, 3.519588634612875*^9, {3.519588943066*^9, 
   3.51958897209725*^9}, 3.51958910734725*^9, 3.519599499050375*^9, 
   3.519599598237875*^9, 3.519599701487875*^9, 3.51959973353475*^9, 
   3.5201191204356003`*^9, 3.52016247163025*^9, 3.52016259838025*^9, 
   3.52016266356775*^9, {3.52016272194275*^9, 3.520162739489625*^9}, 
   3.520164185208375*^9, 3.5201653110365*^9, 3.5201860817865*^9, 
   3.520187489645875*^9, 3.520188113302125*^9, 3.52018854981775*^9, 
   3.520191288099*^9, 3.520282744974*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"MidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".6"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1.95", ",", "2.05"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.519587081706625*^9, 3.51958722147225*^9}, 
   3.51958859447225*^9, {3.51958933484725*^9, 3.519589410831625*^9}, {
   3.520162564739625*^9, 3.52016256675525*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
bNTVSN8t5HDwbyOIwPE=
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 1.95},
  PlotRange->{{0, 0.6}, {1.95, 2.05}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.519587205956625*^9, 3.519587224050375*^9}, 
   3.519588356066*^9, 3.519588635425375*^9, 3.51958868040975*^9, {
   3.519588944050375*^9, 3.51958897309725*^9}, 3.519589108612875*^9, {
   3.519589365816*^9, 3.519589412456625*^9}, 3.519599510456625*^9, 
   3.519599601066*^9, 3.519599702800375*^9, 3.51959974403475*^9, 
   3.520119122448*^9, {3.520162554724*^9, 3.520162598974*^9}, 
   3.5201626649115*^9, 3.520164185724*^9, 3.5201653124115*^9, 
   3.5201860826615*^9, 3.520187490099*^9, 3.520188113489625*^9, 
   3.52018855031775*^9, 3.520191288302125*^9, 3.52028274519275*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"MidpointCloudList", "[", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{"4", "-", 
       RowBox[{"x", "^", "2"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "500"}], "]"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"450", ",", "450"}], "}"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.516749770038927*^9, 3.516749792132677*^9}, {
   3.519585854925375*^9, 3.5195858860035*^9}, {3.51958591759725*^9, 
   3.519585919581625*^9}, {3.5195864558785*^9, 3.519586464581625*^9}, 
   3.519588610362875*^9, 3.520162845489625*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
qzVB
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 3.14},
  ImageSize->{450, 450},
  PlotRange->{{0., 1.8907304085171823`}, {3.14, 3.4278708074224915`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.520164193099*^9, 3.5201653145365*^9, 
  3.520186088177125*^9, 3.52018749063025*^9, 3.520188114177125*^9, 
  3.52018855238025*^9, 3.52019128894275*^9, 3.52028274569275*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"MidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "300"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "600"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".7"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Pi", "-", ".1"}], ",", 
        RowBox[{"Pi", "+", ".1"}]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.519587276144125*^9, 3.519587353425375*^9}, 
   3.5195886157535*^9, 3.51958879697225*^9, 3.519588840831625*^9, {
   3.519589020581625*^9, 3.51958902134725*^9}, {3.51958911847225*^9, 
   3.519589118737875*^9}, {3.519589466456625*^9, 3.519589466737875*^9}, {
   3.5195895000035*^9, 3.51958956903475*^9}, {3.51958960078475*^9, 
   3.519589634144125*^9}, {3.51958967184725*^9, 3.51958967459725*^9}, {
   3.51958971003475*^9, 3.519589736066*^9}, 3.5201192378412*^9, {
   3.5201195241012*^9, 3.5201195288904*^9}, 3.52016284550525*^9, {
   3.520283369614625*^9, 3.520283432349*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
+RPhzYi/d0x82jD4b+wvuZyD8P8Af/aTzg==
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
x/8BoEYdKQ==
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 3.0500000000000003`},
  PlotRange->{{0, 0.7}, {3.041592653589793, 3.241592653589793}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520164194802125*^9, 3.52016531519275*^9, 3.520186092177125*^9, 
   3.52018749119275*^9, 3.520188114364625*^9, 3.520188552614625*^9, 
   3.520191289145875*^9, 3.520282745974*^9, {3.520283375849*^9, 
   3.52028343463025*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Uniform ", "Subsection",
 CellChangeTimes->{{3.5201631845365*^9, 3.520163194974*^9}, 
   3.52018616694275*^9}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"This", " ", "produces", " ", "uniform"}], "-", 
     RowBox[{
     "subinterval", " ", "Riemann", " ", "Sums", " ", "with", " ", "number", 
      " ", "of", " ", "subintervals"}]}], " ", "=", " ", "1"}], ",", "2", ",",
    "...", ",", 
   RowBox[{
    RowBox[{"n", ".", "  ", "There"}], " ", "are", " ", "versions", " ", 
    "for", " ", "leftside", " ", "height"}], ",", 
   RowBox[{"midpoint", " ", "height", " ", "and", " ", "rightside", " ", 
    RowBox[{"height", ".", "  ", "These"}], " ", "need", " ", "to", " ", "be",
     " ", "consolidated", " ", "into", " ", "one", " ", "command", " ", 
    "with", " ", 
    RowBox[{"options", "."}]}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.520165116052125*^9, 3.52016518150525*^9}, {
  3.52018617156775*^9, 3.520186222849*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"UniformMidpointCloudList", "[", 
   RowBox[{"expression_", ",", " ", "range_", ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"range", "[", 
          RowBox[{"[", "3", "]"}], "]"}], "-", 
         RowBox[{"range", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "/", "i"}], ",", 
      RowBox[{"RiemannSum", "[", 
       RowBox[{"expression", ",", "range", ",", 
        RowBox[{"Partition", "\[Rule]", "Uniform"}], ",", 
        RowBox[{"Subintervals", "\[Rule]", "i"}]}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", "n"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5201194480355997`*^9, 3.5201194523724003`*^9}, 
   3.5201194869576*^9, 3.52016284550525*^9, {3.520162969489625*^9, 
   3.520162984302125*^9}, {3.520163058927125*^9, 3.520163059614625*^9}, {
   3.52016320031775*^9, 3.52016331656775*^9}, {3.520163413974*^9, 
   3.520163418614625*^9}, {3.520163524302125*^9, 3.520163532802125*^9}, {
   3.52016357025525*^9, 3.520163579052125*^9}, {3.520163665458375*^9, 
   3.5201637780365*^9}, {3.520164042974*^9, 3.5201640535365*^9}, {
   3.520164141349*^9, 3.520164163145875*^9}, 3.52016434500525*^9, {
   3.5201643839115*^9, 3.520164391114625*^9}, {3.520164429895875*^9, 
   3.5201644571615*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"UniformMidpointCloudList", "[", 
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{"4", "-", 
     RowBox[{"x", "^", "2"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "5"}], "]"}]], "Input",
 CellChangeTimes->{{3.520163818989625*^9, 3.520163825224*^9}, 
   3.52016411994275*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"2", ",", "3.4641016151377544`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "3.259367328636004`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["2", "3"], ",", "3.2064126658136995`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", "2"], ",", "3.1839292206119065`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["2", "5"], ",", "3.171987823613085`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.520164169239625*^9, 3.520164195427125*^9}, {
   3.520164351833375*^9, 3.5201643941615*^9}, 3.52016446531775*^9, 
   3.520165315239625*^9, 3.520186096614625*^9, 3.52018631681775*^9, 
   3.520187491395875*^9, 3.520188114427125*^9, 3.52018855269275*^9, 
   3.520191289177125*^9, 3.5202827460365*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"UniformMidpointCloudList", "[", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{"4", "-", 
       RowBox[{"x", "^", "2"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "200"}], "]"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".3"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Pi", "-", ".05"}], ",", 
        RowBox[{"Pi", "+", ".05"}]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520163049458375*^9, 3.520163101864625*^9}, 
   3.5201642619115*^9, 3.52016440394275*^9, {3.52016447988025*^9, 
   3.52016450688025*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
EMD57+xMQ+nzQ4DmTicdif8PxWPpyw==
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 3.095},
  PlotRange->{{0, 0.3}, {3.0915926535897933`, 3.191592653589793}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520163594349*^9, 3.520164195645875*^9, 3.520164263599*^9, 
   3.520164405864625*^9, {3.520164469645875*^9, 3.5201645077865*^9}, 
   3.520165315474*^9, 3.520186097489625*^9, 3.5201863170365*^9, 
   3.520187491724*^9, 3.520188114770875*^9, 3.5201885529115*^9, 
   3.520191289364625*^9, 3.5202827462865*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"UniformMidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "300"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "600"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".5"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Pi", "-", ".05"}], ",", 
        RowBox[{"Pi", "+", ".05"}]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{
  3.5201196410388002`*^9, 3.520162845520875*^9, {3.5201630657865*^9, 
   3.520163066349*^9}, {3.520164527895875*^9, 3.5201645457865*^9}, 
   3.520164662583375*^9, {3.520283523583375*^9, 3.520283571739625*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
ygfBYm1F6v8Dfts9mg==
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1:eJwVmXc8lf8bxjPPec45xldEIpJCg1SSwn2HjMgqhWhSkhAlkYaEKGWECqkk
ycpqSUJCZO+9ynYce/Z7fv+c5/X89XzGdV/X+3qddaedTG3ZV6xYYU7+/P8p
dozyiVVcAh7PN5dvZ1GR6nPga3X9OCwqhJyw7OTCxBv8i5ZrxmHQLGGvSyAV
84Ols95UFUAKK3sqSYfAP9KTJhKnmRCg/mw4mpOBaz/xH1JjZ8HplVo+DZd5
ML1ceBIN/gKnoWzPXnkazoQ75AbJTICn6xlF/xoKbrrwcn9FzThc7ueMXtVD
R6H01efDL4+C9EztpLY4gXls2Z4rWooh0tOZ7dMAFaMkj+9ap14FPp/lTL9a
Eag42u8cdYoFj+oiqO9k6XjyjGLz5vhpaM32d9CxYmBs+pNLVjuGgFJxZf+d
/dw4K6AQoRk2CTumGYraX7jQQxiOjhVOQdimCU8xdxp+fO84WGv8BQwfBqxs
ECPQ3SnLWiS+F/5kGdm62tCQMRoXFhU5BrduXTfODqXhztifaVHVQyAiIC/A
ZUtgJ1dJ3afIQigWqtsqt57AjRWBFX3bR0FZTN9c8QcHfuSLXxAs6oBdUkLN
VYM0pKp4OdOdcqCpZtZCCAiM+rdJrXCuBfbZbU5pZxLoUHne8FIsC07w4Gq5
dDZs7Cxq97vSCex/1Q42CBAo5MWPpZQZ2PCr/+Gj9QzMauKL9hlmQT6XZbkr
Pw1nuz8c0jhQBRnPv5U/l6Fi+4k48ZfXmRD7/V+TjgcdnXVMt5isGIW0Tx0v
7zpSMbwmXdZcZhg22eduVL9Krm8EJc+9+QXprIeP/94jcHW0aTZbyhBE6UeG
DiZwo8ezkgXt7f0g0/hHMvcDgVX1r0DDhNRDXGDE/ptUNAphVd5Jngf2sFn3
K4I0dJMV7QjymoLdOxy2jOTQcNlc+2BySxuERByfNssgMM7rh/8dwzF4GXTw
9LkIAvnV2bgf7KiH0pz6v/XvKMgsZRusqC8AsemyCwGkXvn/rojYNZoHDjH2
xwPKqahrltlvpPEdXm1Rj76hSmCabDKHmUEWjPeLv60fpmKtyY0kIcVJuPdT
VSeIm4FRkRxsRyOqofvkt+zPBqT+W2m6L1jFYHzjjBfHAwLd7sxOP37EAvbg
DHzJQUPO0t3/eVc0QKiHt1vfASom/OIpnds0Dqy1EY6r3zCwP+CSQ6ZKNRQ9
DOkR6qEijR4uJ7afCZ/nPxvNRTCQ+e6Ajur3SVCnG/Y2dBHo01tM5zxfCU8t
Jmc/3idwxTOVeNvgAMgL22A0uY7Ay6L3fnHlN8MBCWtM3kpg0KuVyarV05AQ
dbjB4SINLeTVIjujeuHZuX6xK2XkejbrRxxaWQqTR59+3aFA4C3RuQ9uwsUw
bZnPfLiG3I/bnRne0mm47xH4l9VGRed38RFb5cah2X/jMQFxLrxkfL46ybse
qqUdpzYIE5itVTSklD0Ptp4eEUJLPFjow1UjIz4CsxJtErObubE40+wpRnfC
teQ6Z4F/VPS322dhXPQT2hrq39lzE9gvyzyT+mAS5AQWhe2duTHA3/pEp/Uk
REYf5jqzkhvFTnKJXampA7HgW1u/y5D636teJGDTDZlPzpce2k/BXhE5l2a1
KbhZotTfwkZBXdubqeUMFqzZr9tx9sgK3JZZyHucrRDuT8lZPZcksPiu0M0c
wya4mt6sIutMIHuAkWLy5DBkiwuWjkvQcTbr7THgmwT2q6wxkV4KDoi/vl98
lAmZx7kUvsoxMPchm3/fKSawn2S3NXzJgy8dA2MOZrVDY0gunxpBRx8Do5C3
6TXguz6B634eFeePHd1bM9kLtocmLELGCHwxL213s2kcNNyHXl67wYGsNYX1
Qd1TYPCIGBZ5Skf8ZH9A50QZSOVeue6vRKD0vs7ntrWj4PJPpLT6MQOpYf81
FMhMwgn7/+ZfX+dEsf7rcvx/Z8HDhzk2PUXFglSZF2aNizD8cLurXQUfxl4/
/kGw5gdoqGjdseQn9dSXn2VD+k3vfJbT6u9cmJzh9dFKmgmJO462FNnxYM7d
/yzqXzBh8r9UKWF/KioUzQQOv+2HJWmzvpOkv1WIzem8TRwEF07z3tpSGj55
oZXaengcGC82sAIcaDh+bq+cNWsAnv75lVfNwY1cQRZJas1dsIXS1mfxhhu7
dK03nPD9A5qH8x73fqFipuSZQEn8Cy7C8qKdElS85fbSn8OjHSpCOL4oVVAx
6I/eKbb989AvtuJMrB0Nm21dVBzj+2HkRAcj0o2O2832FXh0jkHCtVMq9rMc
ODB7wkbmbReUjh76mtxA4LEhASu1q2PgkCLkd4mdgWpsts6291ggNhwtou9G
Q2OaPscYx3f4Kfokk6eFiure8Sc8HwwD42UciCQSmCW/Od3z+xJYyEq/5P3I
jYL5ycvy0j1w1n53wHAKFb/Hby/ry2NC6OzKXbvn6Hj5Va9P/aUlsNky+pe/
hRv7r51+xjqZDT+iNGz+r9/Q3Kuf+8+x4GRKU6K6KxUNtPUiK8zrYHYjvyWL
RsPi/4xpGzUrIDiHMclF6ufX+0vR3R59ILlFve59NTfedh8w03kzDL9VfKNE
tMj8eUVVGN3VDgWaT9XD1lKx19L9gPedKthW4XmUN5eKKxhN1Tl7pmFB734u
Yw0NVZ3ucXI+/QOtVvpUUykapkmPfVur+xWE7Ww9srcTGFM+Lvnf9ik4cqBv
qZXM874XUkeXB6dhxHCAniDLi8UmAUHJ/0bgm+rolOo2ArGtdmL2fC0wDz9c
tSuKipMDZ+Aq9xyIcJU3UVro6HWv8YHa1lFYlNoV9VGJirJbPpr2Tk3B2agE
w7+O87C35YGo3tMJSF+eyRvkoWH9UrmSS0ATrJ266rStgMAS8ehX0/fGQOnZ
TZNPwQTqZBq/f7JpBnxPvFKPduPBxbg6Xhu2HhB6GmH5QY+GztTQ8XVereDX
xK/oFk/DNyl7Yo65T8B7kaS2Z6cYeDxMk0driAk9mQrswgtcGDkUKrus+QsG
Wq6cS/MjcFOIkIyUJxMW+DUzXnozsMvOeW9sTT+s2EzMZ6wiz6+WWqir2Qfe
VspOPeT+H0VuekF1rYfm3GCvAxFUlIps7nE0HwEa1+kMmzga3toieudmSTbM
xnzf6ydBoHP17O4QmQFoMF77a3mczJt/US4JW+bA3uzbrX8VXHiWUy9Z37YD
MoaO996j0zB6/MJ1uuEk1J0azArYQ6Cgh51D0YElkHt+O0/2KgUdLPCZFuUf
CG779Eq0k46feXVtr78eB62Tno2KFTQsk8mRCpbsA+mYlO58XRom6UQUhaoN
w+fLlgfyIukYezxKdN4vDboVorokBAnsS7Oyxvvd0Fgw1lViSkGVjVocdxTH
QT5W7ppCGgNtHLLH+H4Pwov1wikcZuR+eb89edPYDRPhrz3XP6aii0eGU9re
CZjezRvKP8SDqjtPcW+0bgSRJzGsXDKv2R7w3813ZJHn92XwhSQFu4wfRNe+
G4THHd5bHC8QaLv52vdtyj0QuW4+W6GehskXHxefNRgHH3yWvTWd5LX9DwaE
dItBlX3myRB5/jfusE8JrmSCqPVfkdLb5P6PXXi9SH6vVop/qojMmzi5Tcef
fGuCm2InArV+EPhyd5Ix490onGZzVA/1piOPSPMdn80s+BPIns5zlIFBFq7C
f3ESbknHT1Dy6Lg4I/bCSWUYLAU1MrQf0VCI466Bpj4TPJ9F1cV9IvnBXJ33
NX0OzI/Hin4MYeA2xmXpyoou2K35fMuHTipe9n++iWv1JOQZaQS03ONGu4p9
QpuYjXD8+s5TdmJU/HhAe6gutwVG3fY1HPOg4HAP9bqsYB2UXDiqO9dFwfqH
Ag/lpmehX+RCzU4aAwt3am4+T/Ka1p4z62qGSJ5JdM61IfPs9pbX1q3sNIxd
fjJkdL4CKq0UZ1XmSf9YNrUNbWNB+6FHDsNpNExY495927sOcJvo2ooGCqZF
qLF/PdMFR+6wT2rvp2FcZp8QD9EJRhqyVTdJvxjty1GyF2VC7rkYB/ECChr/
F7d/Rr8TFrcczNogREVPEVG1rthpWB7lfhp6lQcP68ok8RWMgMuFJ1sEirhR
2Sm/66/8JCS47d0kOE76I8fLQDmdTuASLV40eUMg5zqX0yIuE5Dy1VXXkuSn
txKUiUmrKeiYFVzLsuZF8+WH2ra5BWCY+mTXaw0CvcdvpWTs/QMS34wDnwnT
MY8z0n5kWyYkhdsk5f1H8tCzvMzguBHAN2bNsQlUZN19GqypvgzXnvyIz9nO
hWUZKnZfPzTCo8VhDuVEKo5EnMvdcG4K9BVCKFr1dHxU2Edhj+yBteHphv5Z
3Fi49kxH6PAY6CYFrd+8REU2GWWhscdMsK1YCHL5TkM7EyKcvWoQXC+aTmx+
QcUcE3UGm2cH7NUdMS8hCAzQv3M6eHsvnOa4FCwgTcMHPqliaqS/xDrnqDSJ
EHjlQcbEstkU7PSZ/mX+h4YOdu53O54NQBzPjUc/Vel4JOdZwUrhaYjfdiHH
K4aBVQ25Nyx/TcEn6XfVpWQfCH8p52JnPAaWTr6tawO48GfnYuXSlUHY0/Cg
LMOPglEPfA65nemEs3DvYF4VFbe3yV0Jk+8E6hrzuvMPyX4WYLBnOOYn9LIp
138g+0nxtcm4+eEuUOb1D6GlECgbBxu/ZrLApjwi0mcvDzrG+PhRvv4Bh8dD
l1fHkH2msdR0/kU5vB0ZvOhEznd3is6a1k5SDyvzWWnsPFjxQYCv4dwEOEuk
3YxX4UZGsed6jWc/gdZi8iJtE5k3bxL0g05NQH6Gxpxl/T/YGaB8M3VwHM6u
NeXl52NgQ9br9ObEWRCTGumwf0NH6WA9M/3cUdjuemJVsjodfUOdZYnwGch4
65G1/gId1R2rBVd/mIAX5Ssy7n6i43nnE1/C3Srh5JD5zw2jVHx5U2XsAM6A
H/POyhXNM/CxslVLaXsHsD09Un0hnxtztP38ci4zgV5RF+orT/bB43w5l71/
ge9RIfVAHgL3FZa9KnVohUTu9g9Mkpd1v/hY7VOphMWaPT5hegTGZ56JuVjY
Ana+xlv4Jako4PWrMHVvDVhtqPqW/ZHAtcJdBhEfmbAs02Wk5M6Bj68/O13w
tBu8Vpdr38kkcF38Yan92TOwa7rjcz6T5NHpDYczng6AadPXOlcqN276JcYp
rdMLQjNdsS8bqCgyrvdO8vEUTK+81mERxI3XAvmd1+sswdWtlBlNFx6kVpLk
HDAI0nO0PTzjFNTQrOO/L9sHpsu/Z9hJ/lcfVz5eLtkNIRf6jj8l83Wv1lCc
sdhfCJE5FvxYl3wXfqBN62DBof7F1pMcDOzpL70eWTgN9sSjS3rXufCWWpFy
ilYWXJi1F24i+fqwYni8enwVCM48z9XYQiCv0p7ioK0sEHr71tbFjPRHXyn7
i1mDkLr76OGYvSRPfWS5276qhEm4Kzw4QaDIj4kd+/PHwRPNDS5I0ND0t0KH
dOoEjK54INoeScNTPhzKIzbV4FaX53ZrjsBRjmVxPe8/kJxQknh6Kx0rXXjM
s8SToajc0OnTRpJPQjwqoovLYV6OY2GUvP/YRRvN+aFc2LF4WuYcOZ9pD57e
Pvk4A5r2xYT17Saw9ZLpQshoL+gzYhh1ZF6usZZ7li44DgPfXLOV0ino2FUY
JqI3CHyVJet8E9lJXtX3z/zaDbvolu6BrwjUs0k1E6qdAKmdT5aPknnx8bBW
gajXCKg5Xbpx0Zsb4xuM9mx+PwrdGkevepuTPDBle5a9tQ/cl/iJHJKPM9a4
OymwJuDrBSdV51gu/Jy3na9mXx3kV6zLuDpAzovTkXEWtQcUiguX/Zyp6F6j
6nAhsRCkJ1vnZjQJlMRzn+oDpsDmioF9qwYF0zfIV1pp/gXpsEa6kCkXcu65
4TasVgmvjr1ceYvsuxGXPR8Jff0LK6WmD8IiBfO850e5J0LAqUfj87g0mcc+
135e+8GEtLbSnk1aPOgsup0/8V8FlLUYvyom/SuTuNrUGFIJHn5rn8xnU3H8
u7f4MZJfmIbS4m2+BBbMKPruO7cE5hz2+0OzCazNOXnA0WYIFr7E+Wlup2OZ
AddFqcIm6NryU0BEjYob7WkmU8KT8EYvxkbClBt31mwcqXLoAkljefdYSRoO
ey9aevHVgGDLxJFvZJ+Vbi51nerphrPPZuzbVhFYZ3bngsydn5B4sVqmmNTj
yQ6C87/eLljLc6n47mYafpZPU2ixmAPd1BTdz50MNDq7MP5qpAm+FrTom++k
4c/o9wvZdkMQY2YZI2BBxdmn3zjyWrshb8r6eY8vNyqc49OoKB2HkDBDwTlp
CjpPZ+wNdu8EjRmLSMlBAlkPtS1W/aiDRGNhrW5lAvmHhtL7eqvAkm7wRSWA
iquchacTvwzAlNGjK0LtnBjW1eL7mHMShled9fzGS8N5PoZo+/AE3K/jTOa9
ScPHH29RuVp6QZY17eS1g4re+1Xe6xpOwJVrH/Rv1FHx7DoyHsZYULzX4BB7
MzuuEt5m3VI5ChkyfgVOF9lR6mNFXIAYEzy0lvL0g+n4UCAlZW/EHPwe/yUv
vYfk+fzoYrfPjcDcPPFGj/w+0/z6iufBhXA67t1MsD05z/4BXxPb56BojYhq
DNlvYum7mm796IDu5+bt20n/u1jocH33z2oI2BoXoGZH9vNpw5Co+S5gP3/+
pRv5LvUj9ebBn9OwsedEyFIFL8pwKiTp6fWBNc1C+8suAm1GWUd0ji7AnO65
a2fIPnPMQ3j/feVJ8OHfddyZTkFD5VLBw3F/4HvFtQWLLSS/sG3PV/8wC7/c
TeQPl5N5K34h52QCC7b9DC3R/0Ly2WjUjfhxJmxT4G6UdyGwMpA7XE+wDQJ4
JHdVkX3w8rmyd5UuvyAwpfPNyTgqZl8KtkbmJMR90+K+UsCDBolt6ew/p+BA
T0plSBsViY76gJ4zCyBqccvi6CQDl30UG1sKeqDzOVXl6CYa+lQNx06IdMEi
XWPf67vkfV/dZnDfrh7EKo5dnyf5rq8lYiv7u2nQyTKSyNCnYbdy3oljNhMw
WJT15d9+AksNUlfSE3vh0abBnC0ryP7y9VdUn1YSiJRkNtPFCExslmK2/R6H
uzwFrtjOg5GKAg8eT8zCfeudFzrqebH0Q978ldppUB+Vjp5nsuOKvHVPzlo1
wmLDSv0rUQQyrd+IuXNnQ1l1gAIXqcek1dnhfoPt4PvTPelAO+ln2e87F1Un
YMVHw5iUd1zo3dj9SFFiGKiPdA68JXmqyyQm8AzvEBj6mz49v49AMa6yh46B
Y1CkmBZTYs6Omlsnd28saIEiIxVlRzrZ31nW1OZVFZD3U/5gzRwVNR7Jfkhv
GAWDWaPTHSRvDc8HpJ3+MQrDmR7ibbe5UHKaPYCvYRq2C0RuvaFO9pm6/GuR
K+vJPGLQ2TKoKBb2qqmjow/KF3WEf36joMGleP6SgT+QrvDlm3QvDVuP3o01
rl0AfUPP/et4V6BY/0p57mNVML1kepb3JulPipurVoU2guT3pPWx/VTMvPf9
4TjZH39LqWUW59LxwLAh703pAbBj7VT5ZEXm7eWhZIpoM+y+zhHtepH0Lycz
vsqsCdhKC72zxo0TRXZYsJ3MHQDdd0qqDe/paH7NwHNOZwzeWF2zu0HqKSi5
0EU/pg1OcoPtdyMyXyJrDmgzf4O+2Er9l8cIbFMo7OhfnIXEG7dLCwR4sFjZ
O0DnRR143Dwo5BZLoNmaHrvSwRkQl+vN81AnsNxvLOttwSSIaYfxHWqn477f
gc4Xvk5DwLmaM68+MtAgYfWLNLc2sL62uHRSgOzzehBa9qgbJnec8dguSmDY
cSpxNKMLkhR/H64k81zSnXowaNUAfLX6XhJVQ0X/M63jAxZDILJ0b7X+ewJ9
l5KvzdycBxsv71bpx6Q+FrNvsrgHobxIge9DKDeG00t5I2a7IHVXXJO9JR0v
5Z8LDVKcgP2PaFO3Nck+26TZs3C9C8r4z/YdOUTBD782+8qLDoNv1aJecRkX
bnMruXdpXy2sV5+9okT2/dPyDWbHS4agWbUlfZLCQElXsbT1GT8AW2MFqSQ/
UDM7H3WOTsEboSMPdpH5kC1eXk1RL4OwTZa7pnYSyB2oFLX7LgsK39067a5G
8sPH6sN1vRXgVnryu1Igmf8fwj+MBk6AVWBRtoIKqd+Nxfs2sf2Bz44PNdaY
0nGTb/JvaZMJWP9fWonZJwr6qXvRl6pnoOLL9fNq3jQM8/tbTV3XBZ7+rh1B
ZJ8O2rlDRmXdKMQeHl6I0qNjfAhzUuc52R+DQoF+kYGcPyJ4Xq9qBdlY2fuO
NwiMDImMz1rxFxiLhXn/vpF9J06gpGQfCw50H+T4VErFPIW0RUpVFxgmTF38
8YaC169E0qRkmaBhlvGs25oH18ibpP+6OgF/jmLmpxSyvw8/T5BXrYbQTAUf
ISECtw5vMhmqH4dS7XKx+x40vJX9R3qn9SDJN/fOuJdwYSM7+wulS9PgUWjP
2kD6Rb6Kg8QG0v+TBLKn6i9Q8JMBm4X06DRoLdsf2ejLhjqM0IUSkidVFTkd
Q68wMKzOVjP7cgPo/m4zWNNH4MaSPIUMvy7YeG/Yr24reT59u/X2f62Fs1ic
1zBBwauFCU2buLthf5NauRGZz6qSCQ5zSu0Q/lH65bshCn6bOeNhUfYHmA6t
x3PPk/qj2dvUvW8DB6/URcUBKvp8Fw6pt5mER973Y0ycabj7U2FF+5MFOLCO
MZFG6sn3vtvmyy+Z8Pmu+Ec9Mi94XmRdPvizC0J4Nlo/u0jmV6Myp/3eKVjT
sFcy8RaBwekVT5u/T0DUfuvt3HfpyH03N/S2YC2krb9hwvxBRXYXyKPpzcDR
/p/vI1qo2Jgk25CRVAIasQrh+8l8Mkm1zRV40E3y0z3392QenWQcijG49QGs
vP06NpD62zvzMbT9/RzIf165x3sXud6cxuSxmSmoSeFeV2HAi0W/BRk/3Hoh
SknvGrcDgbtngw/utJqDdR/vpRk+JjCUc9eC5SgLMivlXZeyabhpTbXDfZtu
sMsNkQkl+0MddcRH7cs8/HjfeOWGDh/yn1CrNVEeAgmdmPBgbTIvPPe2/0hi
gV/Y9hB3kocHi56HpNg2wI/auqtn3Kio5dz8Km3DKIzpXsy6a8KJSyNClatv
/4EdaUN7pxdp+Eiii+NUzjScNG+APfM01DWtM8m90Q003tO3r9STeV6jwuLP
boeq/dHv3p8nMC66VitQrgnunRRzTImi4t3VCoUuWbOwsLFG84EVeX/CIpS3
oZ3QPshUnCL3+zZSwufakQnYvAQSV0keNBcbCokUIPU9MHjicwkF3/irtKvq
/oDnzYSd6ikChZMGLcNuzUFCSVJ0cC8dU/wY232+MGG+5P5Wp2Qe9M2xXv38
7iD8FZ/h+P//T7qvDNnPxvfBtejBz4mmBBo8PKRiy9kJzkf4jd+T/iFVa50X
PToML2sjP/VtI/Bo36VhgY3TUJ8gs0PHn4Yqmfrz5uz/YM410ltJnIYXzf9s
Dr7UAJzbN1CCjpK8pfDpd4x5NwjXJxu81aRjYW++82P1enia0Zsu0Uz2Zbkv
bMOLtVDJo+X+04nM2x6LEWIwAerYFYvFyf4RpzcWcWfhFzxWqwgvJNfjF3Zx
67mUSbDnLPQ6kMCDHN4KUVxe4/DZbkpqkcaDf9/EeG63XAZViZWvE87yYRGn
WNKesBkQWX1JvdiEF09l+3ge1JuAO5pJdXdZXLi7Rpb+srwBBi7NL0WR+dLP
fZzKVVIOJ+xziJtJBFp6HLMxj54Ggyut+uKDdGRUhpho500Dp37czuNNyzDU
oh3vJT8M7/vv66iS88I5HjO3mESez42N+1wdePERIXPrkkEnPIzY2SkvRfat
/vD8G8Pj0OJ/wHOzHTde91x/+tflNjg0t/LbvddUXJQ9KF9F3pdjx4bu5wkM
dHf8Wihv3gdnp9YXDvARuOXbkF2UQBesqE7s/JxHRZrenDwv5yDcXtP/vcyC
vE+Hgy5W/GNgzn6nqG2EwFs1okXr4qbBNjghuU+Z5C2dpinZhkH4qKSvlbyb
1P9lTj/n+3nQ+LBwjxqZl89ubGs+e3kE6ufP6HgZ0DHf1V3xSCoTSp7ZtvT3
E/hb5dxQ8pFuuG7rfWOQj/TfcK++DewVEJMoab5I5sN2hZoTR9+OgQtzl/Fk
IQP5J8X/e1CUBa0Ptuglkvu/+vtoSg+Zd1UG2WwW9eR6GMemxnd2A37y6zn0
mYqdEU+nbzWPwPLnOz23GjmxePulUH7DQnij3OqrSeo/7UJwpZ7HAITorTWa
PELFlAiOJwL8I2CyYavUerK/qrhabOa9zISYv6wzVhYUDPf7+PNp+yJ8MNx/
q02Ugqnn2+J/M3vh/LYKaTN+0m+7kxRmDdrBfLWRp7YqgauGjKb7Xk1A7WVX
totk/sWmRDianc0FgfpNwXQagTs/D0zh0BSU5ZsyyirpaBzSl1xwugCWk3b6
jZP6Ta3a1jcUwIJRMH0NzuR6H79rib7XBuVGD6Wb4gn89sJP8H3bLBgdyF1x
ooYL+SWmLyiS8+zWzL5k6UNHd9b9HfqkPwnyFf6z8KejnIyPSWvRFOy1jzKQ
WsWJzuJuyf9plcNZkZ2jQmEE1r/LN6mPHQLnyxp9wqYk7626pNkxxIJTLWu3
FQtzod1atnxu2Vrw4Hp3vyeFwAzbDUdinMaBm1h+lTxIwyy66YH1f1gweIS5
oFZMQ7srhN+UUDkUij4IpyCBY32sUMsHc/BwzqU7252B9SecYhZnO8GYNiAV
1kXB2vjc1Pci/VAz89kpbZnUX9BaL+WzJdCj3a3ARvJiGqVkxDokA2h+pyPG
yflNSddR2vR4EjqGjD+uVqCgcZCVQcGnJHBeUBVSlSHQaDZVpmGpDZ7ONW2o
riT7xh7fzWeLG4ANsnebk34pRtnjdXu8AnjX5GSGhZJ9YVCuMqy7D+JYJ/ve
/6ZgsNL4nbxrw7DV7RpPTDGpj22Pq/0MFyDt5Jn3lXLcqCp4uailhAlX7LPY
95J9fzcP3+yFHRVwa/yrnQCpP+N+CXbO9EHolzm+6ZA4HdcPv0p5zJgC7kHZ
w0ee8eJNipNAalovTLtdZ4rlU1BD9Ia/b2gLRDYblfzmo6GGUuzBjWS/oT6Q
9spXp2LkwPHcGclSCJ/RH7fupKKmvBsP+8wktHfpZDduoCH/itJvrip/YOPr
RNsdpJ8qL+wIZc1MwwWWwi+Ok6RfrpbbU7ClDKSOr5/MvU7g2lEh+/y7zSBt
SUh8/488jxh/R4ZVJUwb/+Mx/UT2g+SuOwUxg1CquzikFE1ggGkwq25kGrLk
xy+rXCX5ccedcQm7WTj+cHm54TOBFGt+V9s2klduHyxT3s1AacoWlu9GJqDN
XFMZJx3/aaqnarAVwdyTxnsE6ceyQsqbtK+Xgef6eOm1Q6S/T3zfzBHKhOtd
+2rEw0k+nqy+NnymFTTKm9nVDpF8Kvoi6Dv3CNz7lrrzijSZX75jvd8kpqFM
vCR/mycPdiaK6NH8WqAgU3O8S5aG2gdnvPf6kH30gtLfjWReOu9ofLl2ORFu
aezfaEXyQrE8/XCV6w/gizD46iJAYD6dENuj2A8h/o6Kruw0lLwzff5EVxUU
PPuWe5vst3GBJwLTtadApzMuULuDB+vDdivWbpiGy+HBu6cu8qK4W53qM6NJ
+PLftgpJaTqKPJtO3/GK5P23E7vedZD8U5Eq/aZlAYaGu/lanXjxz/JJr4be
WdB1UTh9JJuKF2JMftW8nwI7vS4Fhc1UTDBRa8iW6AD7jXbpgjMEFh20oe1q
ZcHacb2Bk+F09J+j77ZJHYTO6RLmI5Jnd72f7VIZGAbHSbW8L5fpOO/EXRZ0
cxIMQ6qec/fOQ7nk1UtJ/5bA7KfyxXQrPkx09Fp+k/AHUibP2P4dp+KPHzdf
jo5NQWXQ6pGYlWQ//qLFvY69Gvzjz1YFZRDo0qRz/YdmN3xRy9nPuUDgx2Ku
nYHv26Fxerons5uKyrZKZsbnR+CxnHhtGh8DBWe1ueNJ/1F69XppdoCCrhHH
L3YeWYSgtdqRhy05sUy5u1NOeQz8zUYkh/uoyKxPyklwqQY765tLL+uoWNb6
V/rQQA9IZkeXLbDIPB3vW5L/PgleBt9MH0TzItvBdN6VLZ1gcFbQ6PE8BV+d
umYRljMJD1HSfOcnOh6THNwqGcOCG9On9DMiuFE09Tm+85iCXUvzSZPJnKjr
n7rzRPEIbPMbMR4h+8aWxu8rR+V+g0/Jn+sjcgRWctZm2vCXgo3R2vsPFQj8
H/K+SkA=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 3.095},
  PlotRange->{{0, 0.5}, {3.0915926535897933`, 3.191592653589793}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520164196020875*^9, 3.52016454775525*^9, 3.520164664083375*^9, 
   3.520165316974*^9, 3.520186098349*^9, 3.5201863177865*^9, 
   3.520187492349*^9, 3.520188115364625*^9, 3.520188553364625*^9, 
   3.520191289724*^9, 3.5202827466615*^9, {3.52028352481775*^9, 
   3.520283573270875*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"UniformLeftSideCloudList", "[", 
   RowBox[{"expression_", ",", " ", "range_", ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"range", "[", 
          RowBox[{"[", "3", "]"}], "]"}], "-", 
         RowBox[{"range", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "/", "i"}], ",", 
      RowBox[{"RiemannSum", "[", 
       RowBox[{"expression", ",", "range", ",", 
        RowBox[{"Height", " ", "->", " ", "LeftSide"}], ",", 
        RowBox[{"Partition", "\[Rule]", "Uniform"}], ",", 
        RowBox[{"Subintervals", "\[Rule]", "i"}]}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", "n"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.520165506739625*^9, 3.520165537708375*^9}, {
   3.52018613206775*^9, 3.5201861451615*^9}, 3.520186605833375*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"UniformLeftSideCloudList", "[", 
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{"4", "-", 
     RowBox[{"x", "^", "2"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "5"}], "]"}]], "Input",
 CellChangeTimes->{{3.52018630519275*^9, 3.520186306239625*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"2", ",", "4.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "3.732050807568877`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["2", "3"], ",", "3.584220045442658`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", "2"], ",", "3.4957090681024408`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["2", "5"], ",", "3.4370488288835515`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.520186308224*^9, 3.52018631788025*^9}, 
   3.520186611833375*^9, 3.520187495145875*^9, 3.520188115395875*^9, 
   3.520188553395875*^9, 3.520191289770875*^9, 3.520282746708375*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"UniformLeftSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "200"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Green", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".3"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Pi", "-", ".1"}], ",", 
        RowBox[{"Pi", "+", ".1"}]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.52018626763025*^9, 3.520186268895875*^9}, {
  3.520186641489625*^9, 3.520186642145875*^9}, {3.52018683619275*^9, 
  3.520186838583375*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
WxS8a9pMz48YqH+3yDKP8L/MnAoh
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
vSo=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 3.0500000000000003`},
  PlotRange->{{0, 0.3}, {3.041592653589793, 3.241592653589793}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5201862731615*^9, 3.520186331489625*^9, {3.520186626052125*^9, 
   3.52018664381775*^9}, 3.520186848395875*^9, 3.5201874976615*^9, 
   3.520188116020875*^9, 3.52018855394275*^9, 3.520191290349*^9, 
   3.5202827474115*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"UniformRightSideCloudList", "[", 
   RowBox[{"expression_", ",", " ", "range_", ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"range", "[", 
          RowBox[{"[", "3", "]"}], "]"}], "-", 
         RowBox[{"range", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "/", "i"}], ",", 
      RowBox[{"RiemannSum", "[", 
       RowBox[{"expression", ",", "range", ",", 
        RowBox[{"Height", " ", "->", " ", "RightSide"}], ",", 
        RowBox[{"Partition", "\[Rule]", "Uniform"}], ",", 
        RowBox[{"Subintervals", "\[Rule]", "i"}]}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", "n"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.520186664599*^9, 3.520186670833375*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"UniformLeftSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"UniformRightSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"UniformMidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "400"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "-", 
         RowBox[{"x", "^", "2"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "700"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Green", ",", "Green", ",", "Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".7"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Pi", "-", ".35"}], ",", 
        RowBox[{"Pi", "+", ".35"}]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520186700114625*^9, 3.520186782302125*^9}, {
  3.520186814458375*^9, 3.520186845833375*^9}, {3.52028362438025*^9, 
  3.5202836392865*^9}, {3.520283682520875*^9, 3.520283735270875*^9}, {
  3.5202837787865*^9, 3.520283807270875*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
WxS8a9pMz48YqH+3yDKP8L/MnAoh
     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
sfXnCPrV3tVvJ9f/5QYnHkdQcvL5JTeKrUdHcORx6GlX2gNyKVFznsdAW6ku
cxvF1qcYjPaJTNlKO2bB02V7A2PgoVCc5EKx9SoGXtmaqb/SfiLay1s0MwYx
9/84toVi61c0HAb4+c60p3vdUve6FQ2x9tyyzRRbz6KRM+Ne3Sba+9Sb8jn7
onFwg3XbRoqtb9H41H3wywayv1YKvz5UicbxMHsVYqbeRaEy/OLi9eR8Tufq
+9ejoP3w6JZfpPUvCgqdb0J/pn2ofMKXTq8oaFSllKyT1sMoVPWFvHCiPbuj
acXQzCjEBeYrOUnrYyQGh97YOtJ+qGYcy3kYien7eMFrpfUyEmdXplWsoe1Q
cq6/KzwSWqGtX1ZL62ckOAdHWxA/ryoVpi+NxOqWocCfpPU0EhNe/X5zFW1e
MOc/2U8R+MrVnbRKWl8jsDl6yeaVtG/0tY+jzkfg4/bXBQ7SehsBhU3U4Ara
F8+adrbuikDK7ic/rZDW3wgEvOHk2dOubLMN1teOwLAkfthOWo8joGzgs4G4
bvHyPQMvw6GiXXjJVlqfw/GTzMypxAmH1t1fmhOOK2mN/B+l9TocLbKnn9jQ
/ko5eva5hiO05ARspPU7HMNLLpxZTq7PjeM7yA1Hc2yj0nJpPQ8Hdbsv0Jp2
z7SmcueeMGQ6yvVZSet7GO5em7yFuHozZ49sURiCXn+/w5PW+zD0Pr1jRWyx
Z+3StwfDYNLsdRnS+h+GDsf2ucR/T/5kL28eBtcB5QJLaT8IQ1jOaO6I13Lo
EQZj5zMnl0n7QygGfx3QJN5/QSei/HYo2hT7ji+V9otQDMkFaRHvaip9ZZ4a
Cpdvp3OXSPtHKO62bdEjzrz3b92f20JRUn7svIW0n4Si+4bzQuIIrUc6O41C
UeOSVmUu7S+h+DzhxxXEQ8ol4AyFINvH9ZGZtN+EwGZXlxtxzzn/vNSGEHQ3
3n6/WNp/QqB2ebyEeHuwmqFGRghmrc9VXiztRyHQGIzMX0Tbfmzbx9jdIdCe
UmGxSNqfQhA1x7hpIe3Syg3OnRYhUHjftXOhtF+FYLJB8zdTsj7uG3N+mBiC
f64MpZtK+5cEy046zidOF62s1mmXYOrHB3cWSPuZBAd6hZ7EvDmc82MuSSD6
02bcAml/k2ASx/DMfNrKJZFTSiIlaJc1tJsv7XcSaOzn9ZrQfp8k8qJcJCjv
dI82kfY/CXoNUo2IX1RmCtabSpCheue+sbQfStCVNs6X+En1rgl24yWIO7tc
01jaH8UIdRfenEfqbzmW/NMhxs7+gr3zpP1SDPmoP6cRz35ry3O4KoZcYNu1
udL+KYaNUZsncVbuEdG6FDHiJtSpzJX2UzF0TqbeMKLtd9g6Sm6/GBuFtgeN
pP1VjBk2zVrES+4oTNpqL0ZpqdU9Q2m/FcPsSFgw8QLjX3s2csXYlH/C2FDa
f8Xo64rqmEPc/02x/5sImZY2qXOk/ViEuNLb9sRptvEFM5+JoO6k/p+BtD+L
4LnEuJS4/rhOX/dlEUwz5T0MpP1aBI8zp2YQ/yzPMUeqCN0FQ49mS/u3CIvf
T4ojrh2wU9A9LIL1i6e2s6X9XIRxbVtkiMeYtgykO4qw3T2pQl/a30Wo+iTg
E6u7aJUlGovQojHJRF/a70UI4a95q0deP3KI4JVrUagn7f8idDne2UU8s12L
/gtG3FJZXWImDwTDUqe9U5fMxyCnUCMnGFWPnfOImXwQjGQjH3fismfZRYrb
g1E72kiHmMkLwaiwCerWIecVuDafdYLxsWNXATGTH4LR/aTHk3hU3I9f6l4H
oclo2IiYyRNBCPg79702qU+cCqGoOAgz9Z+WETP5IgjGnGwhcefa9NPq3kEw
yPoAYiZvBMFHt0mW+LB6q1+iRRCWPlrUyKXY/BEE0y7t5BG3c+gRhPDMo5uJ
mTwSiFxeAkV8WzO7lXM7EBoGCn9TFJtPAhFRMuYScXTwDO6HpECsNQ0KJGby
SiCOavDtiEsP8UVFWwIxo6VHiZjJL4FQfvxX6ywyf87Dpwz1AjGYYVFAzOSZ
QCQcV/Umrr1ms2X/hwDk7/bkETP5JgBjY0wmEvf8yUnbVxWA9Sl7ns6k2LwT
gAFN1QJi6+ihzboxAXh3a74PMZN/AlA/7w8b4vAVE++nbAyA/5gyZWImDwVg
7Qe1V1rk9dlzzct0A1Bb1FNKzOSjAAT2aYUQx8SGvwv51x8qB6rXETN5yR96
A3XaxP6WkTv+u+mPaasWfp5BsfnJHwoWY+uJud/V5sxI9Udz4tJMYiZP+aNV
/6+9xLLvql517PDHt8eNIGbylT/CRDrKxHflHjvYL/bHxFHPuzUpNm/5w9vm
QwVxHvXEZKW8P6rnu8cTM/lLiKmVJu7ELgkpwb3PhEh7uMmcmMljQrh4PZtE
/N/fEfM0LwjhGVvWqUGx+UwIyeyeCuJNL40duyVCzLU7kEjM5DUh8vpWeRA7
RHuMtdogxCVuMIiZ/CZE1dcxqsTZGrciDAyFyAx+/m46xeY5IRIaxtYRq2dz
6CGE9T+Sk8RMvvNDzvjVAmIjjz2qJ1v80LHUw3Hk/SN5zw878poMiJ8q/vJG
u9gPF3eGjyFm8p8f3M5FtqnT/l4dN3FemB/UjzeXEzN50A+C3QeSiYt9X42/
usUPY62c9hMz+dAP8zcErSDuNjwWXGvqRz8/f9AmZvKiH4ynX5AhfpTAmbJm
oh/uLytt/YFi86MAKZFD5cR0IRQ6dQuQtjQ6lZjJkwIcOf7rIWKL726iu9cE
uPLeew0xky8F6BLfMyTOiuJ8rs4QwDFjrwIxkzcFKA5b2atG+0pSdaWetwCT
0vfUEjP5U4CXWo15xFPlBNdl1gjQ4703hJjJowLov13pRpydJ+E4GAjQ+3K3
1cj7Rw4BThbfmkksp7ZNxJET4GOJiwwxk1d9UWhv2q5K9vuazY46Hb7Ib/mx
mpjJr75orknKJg7gzE36rcoXZvvUxcRMnvXFdatWV+IY89/3FB7zxd6zLdbE
TL71xTTFCdrEE2szlcb5+SLmlUCWmMm7vhAma/aokPXI51y/vd4XHolf64mZ
/OuLorUTzhHHfrO61W9Kn7f9JZaYycO+CH398ACxfEDWPoGyL7JLI5yImXzs
C1UNr4XEqts+qGz74IO+nCNqxExe9sHDmtahabRd68W6+fd98MPQ1hfETH72
wfm7024QL1M/pbDiog8Ur/2XT8zkaR84rVWNIa5uirSwS6TPj3M7MPL+kXzt
A7d9z9cRq+/iLDp50Ac946LMiJm87YNid3dN4lMOS8LWOPnAYsKBUcRM/vZB
4JGCnqm026qjy9cv8EHjYcU7xEwe90G7Y34pcUqxicdvU31w9/Luo8RMPvfB
KLPNQcTDRrNN3T/zYb7T152Yyet8iFqqHYhPd/Td2PWYDwNqkQkxk9/5uPO8
WZU4cdCutrKCD6tTud+UKTbP85E2IaOLuLCR+971OB+Tyq40EjP5ng8d8zGX
iLfJbuSsF/Hhv0hwjJjJ+3y0rZwWQtzhFFCRvp2PZT888yRm8j8fBWhwIv4m
udqtY8fHKtcXFsTM8wAfe2dpcolXyhas/27Ax1ZtyXhi5vmAj7jJkz5NoX3r
ptJLajIfe6KqW4mZ5wU+Dpln3CI+tuq5W/xHb+jWpxcTM88P3pB7cTWdeJVh
a9Xyx95I1JcVEzPPE97grT3sSfwyPv+55R/ekIyS+5mYeb7wRkVf5TJiB47P
+eBcb5j9ka5HzDxv0OamKRGL7DmUbKQ3Ou9eHlKi2OcPb9gfHO4i/h+XsZPc

     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
GFsss8tHsBwebAr9GEH6xv8AF4oQEA==
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 2.8000000000000003`},
  PlotRange->{{0, 0.7}, {2.791592653589793, 3.491592653589793}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.52018681819275*^9, 3.52018685494275*^9, 3.52018749850525*^9, 
   3.520188117020875*^9, 3.520188554770875*^9, 3.520191291099*^9, 
   3.5202827486615*^9, 3.520283626677125*^9, {3.52028367531775*^9, 
   3.52028373763025*^9}, {3.5202837814115*^9, 3.520283812099*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"UniformLeftSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}], ",", 
     RowBox[{"UniformRightSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}], ",", 
     RowBox[{"UniformMidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "100"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Green", ",", "Green", ",", "Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".6"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1.95", ",", "2.05"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520186919849*^9, 3.520186939599*^9}, 3.520186969849*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1:eJw10wswVXkcB3ChXaaaHh43sRVj9VrpoUjxtdwem7Jee5toVNLS6nFLeuwl
lSalmkGrVBLXu+4VeURXoZRH4pJUE9MtmigkCve69/z3v7P+Z+bMmc+Zc/6P
3+/7Nw/Y57VTW0tLK5De/z2nW/N9Rs31nbXGrv+tBHvuDLW296rsR7PrXpHX
eM3Y+24Ij5Kq4wIOiv6kQzamnRinO2tJYT839r0C7gmdYaOuBM6pspWzSttQ
Mdn9b71DZOz/14jd6qkIvUQQzf+4fvqmVux96uCTKSFj47UgfNFa66gygo6I
lhCXtc0I4J0tcawhY+PLUaM/x3luE0G2VPxLeV8DPg2HdPFesfnq0aHXEZzY
TvDis2iwu6EOWkajQr33bP5a+O3foHvzA4H3RAuLqKxq1A3N3ijpYut5goJA
75LFnwls7l3W4c1/jMt+tgrvXra+Knx0XWZu9YVgvnFEs6HVI/DfX9l0t5+t
9yGU7y9OMxggWCJLdpCLKuGy9EuIyyBbfwUagqzEG74RzJjDiy83qkCMxOaM
3Xe2nwc4t77q5Y9DBP5+tqVhtfcRsKtkb+UQ218Z2tQuEUHDBO3xKz7FymRI
meeWox5m+72HhUZJ86JGCMxP1MVGfy1FS+KkN+oRtv9SxMbO9AxRErzOEjro
bC1BsyOvo1HJ6nEX2y6dKF6gItA6oQ6IVBVDtCCuOlLF6lMMYWjfl3rqweN3
BafLiuBx2LHHYJTVqwjdPmnb/qCeUVv50/wbhYjIPtYWN8rqV4jDW0XttdTf
zK70p18vgK/UvFkzyupZgN2WStOFaoIso9MCw8I72F3tPdVPzep7B8Yf5dwp
6hXXvcRr3uZjIDx9rkTN6p0PfWfpUzl1su81nwSzfLSWb585qGb1z8Oetdc8
DTQE8XYhhTW78nBgCj9usYb1Iw/2nr267tQmspPWujG30ffBQx6sYf3Jxem8
SoOT1FY/WFgINueijX+h54qG9UuKeH3PsDzqJptoidxJigtJ/CePNax/EkzR
En1/Te00cvD2THsJ6l+Z8no1rJ+3cLU5wZFQP5Kl6K5yvYXjvKdHp3CsvzfR
lmr/ZjZ1kV3r8mD/m5AbmggXcazfOZBIo1aDuuOA5yPTMzlYXh8dtJFj/c8B
F7H6nS91b0yXgDzIBv8vnftBHMtDNmz3uegepF7o1J3UOS4bgcsbyyM5lo8s
7Nc0DcdQJyrnulf8noXi6raCBI7lJROL5oyoblBPs7P8NSMrE1xV7vMcjuUn
E8/refwC6srLit8q9DKxxVfhWcaxPGXgk46P9mPqI2drH/ocyEDg1UDfZxzL
VwYyl+b7v6CWrWm4UdqRjnnx5w3aOZa3dGxWaUd0UvcMOg8KtqTj4qm3yZ85
lr90JI7khQ9QI/6ZPO1NGtY5NZgoOZbHNDTv8T1KqJ2e5Byz3J6Gl2fWJY8n
LJ9pONjpf24C9WRH067gHjEa3RxcpxKWVzHy3nnUGFNfnNi0ZkKEGKbV38zM
CMuvGMvOC1zNqUPdharcaWIIhNGOVoTlORWRYaJJC6hX7rCPJpJULHWbUGRD
WL5TYWk4tMyW2ljQVnTbLRX9+h1x9oTlPRWycTvqVlEP/CNpPNKXAt+Wrwpn
wvJPLRlu5VNHtqoGTBJSoLeqTrqOsPOQAmG79M8N1HEz3MI3IQU/J7dqexB2
PlLgZb8rypv6X2HKQ50=
     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1:eJw103swlWkcB3ChXaaaLuQktpYxKq10RcJXnNKmrFunWRpdaGm1dTbpsiep
NCnb7qCUJJ1z3OscEYqOQim5xHHJ1mBStElElOs577PPTp4/3nnmM+/7Ppff
7/uY7NrvtVtTQ0MjkD7/j3Ms+T7jJrpOp99pJfKKFPZfPQrDiXF3qKWtV1k/
Gl32ibwmq/H1/XsIj5LyEwIO7f1Jh6yMOqGpPX95fj838X073OM7w8ZdCJwk
ijXzi1pROt39D51DZOL/l4jZ7tkeeokgiv9u45ytzRBW2/mky8jEfE0QLXW1
jCwm6AhvCnF2bUAA71yhw1MyMb8SFboLnBbWE2TKpT+UfKxF93BIF+8FW68G
HTodwQltBM8/iAbf11aB0x8X6rxh61di2++btG+8JfCeamoamVGB6qHvN8u6
2H6eID/Qu3DZBwKre5e1eBaPkeC3st27l+2vHP+6rDIx7yOwMAhv0Dd/BP6b
K1vv9rP9PsTImwuz9AYIliuS7ZSiMqxd0RfiPMj2XwplkLl002eCuQt4cSWz
SxEtszpr84Wd5wHObyz/59shAn+/lUVhlfcRsKdwX9kQO18xWlXO4UHDBG1x
q7tjFAqIF7llqYbZee/BanbSosgRApOTVTFRn4rQlDCtRTXCzl+EmJh5niGj
BC8zhHZa2wvR4MDrqBtl9biLHZdO3lk8RqBxUrUrYuwORItjKyLGWH3uQBj6
sa+GevDEXcGZ4gJ4HHbo0Rtn9SpAt0/Kji3UcyvLvrO4no/wzOOtseOsfvk4
vF3UVkn92fhKf+q1PPjJTRrU46yeedhrNmq0REWQMfuMQD//NkIqvGf6qVh9
b8PgnZI7Tb36mpd0/atcDBxLXShTsXrnQtdJXq2kTva96hNvnIvmkp3zBlWs
/jnY63rVU09NEGcTkv90Tw5CZ/Bjl6lZP3Jg69mr7U5tqDhlqR19C31vPZTB
atafbETllOmdojb/xtRU8HM2Wvl/9VxRs37JEafrGZZDXW8VJVM6yvF3Ev/J
YzXrnwwzNERfXlI7jhy8Nc9WhmcvjHi9atbPm0hsiHcg1I8UYm17l5s4was+
OoNj/b2BFolty/fUBTbN1sH+N6DUNxQu5Vi/syCTR64DdccBz0dGZ7NgXRMV
tJlj/c8CF77utS91b3SXgDzIBP9XrftBHMtDJqz3O2sfpF7i+D6pc1ImAq3r
SiI4lo8MCNX1w9HUCaML3Ut/ykBBRWtePMfyko6lC0bGrlPPsjFbm5aRDlKe
3ZjFsfyko7GGx8+jLrvc/mOpTjq2+bZ7FnMsT2no1vLRfEx95FzlQ58DaQhM
DPR9xrF8pSFjRa7/c2rF+trrRR2psIg7r9fGsbylwndMM7yTumfQaVCwLRUX
T79K/sCx/KUicSTn2AA14p4pU1pS4OpYazjKsTymoPE336OE2vFJ1nGznSl4
cXZD8mTC8pmCsE7/P6dQT3cw6grukaLOzc5lJmF5lSLntcdTA+oLU+vXTwmX
wqjis7ExYfmVYtV5gYsJdai7cCx7lhRbhFEO5oTlWYKIMNG0xdRrAmyjiEyC
5W5TCqwIy7cE5vpDq1ZSGwhaC265SfBJtyPWlrC8S1A8KaDKnnrgoqzuyEcx
/Jo+tTsRln9q2XAznzqieWzAMF4MHfsq+QbC7oMYwjb5L5uoY+e6HdsKMcyS
mzU9CLsfYnjb7on0pv4PnhxIhA==
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1:eJxV03tMU1ccB/BTYExFo0NULIiCTBSBzgoUef2uiFjRlA2xqHM+OjUqRjuE
jYggAoLA5P2QKNIW2vKoRYWitShUfIwOWWHARlSoSBQmIi8XXpMdFk+T/dGc
fHJ77z3n9/1ea96pwMMGCKFD+Dezmjv6Bk1az6b+v45DD+8FPe4RjTp82tEt
UD0IR/5b0afrffCnqDlqfQiidINXf2RY9MAZOctsjS/69H8drKh1vmDPQBQl
VHksVz4HA1rN2mwbcn8HZKlXmvHpiEr0feNvHtwOUx9dUjvNyPNaoaQ8I7ln
AaJeRbWG+GxpAXZwgOvoPPJ8LbztNo29Y4Kokusih9qBJsjlpL6anE3e1wjH
I5rZV2Yhqu1t5EhfkwbkyVZD0Z+T9zdAd/AYJ9cYUTvm2tjESZ/AJH0ore0z
sp/HsFj9cKEzNuNunuES+0dgZZfELzci+3sI8fd0ja7Y9oujWsxW1YP/egd+
iyHZ7wPI/5AQHonNVF1z10aq4ZhEkcMwJPuvg/iFF9E7A0TR7ZZk1i6qg5Ez
bdQtA3Ke++CT0mUXjb3vW2dleMM90LWO3gswIOerAdH5DtdV2C8yN/yVrlKB
xmuwFwf66bx3wTfvuF8XDVHW5zXpiUNK8Hk59UcdjZxfCdUu1W5i7A4p391w
/x3Yrq02/ZlG5nEbKGaGZTg2Oj/FOzdRDaEZjCUHaGQ+1WCRtaJxO/ZIzG1u
Qo0CfNgucz1oZF4KYCbtl9tj0xvUy+wLq4AuqU+1oJH5VUEne+TSPOxRy/zB
4oJKsM3bmo5oZJ6V4B3IixpFiJIuSuCaVd2CiX8k0IfIfG9BmflAfSf2hoJA
kV/XTTBmrRlvRWTeN2FF2HLtr9jX9lwJyrG8CVprpkc9IvO/AeJZ9k4q7ExW
SNUvx24Aq83kWiUiedyA6rThGBn2UlWso1FyBVx0fP9UjEg+chgM7z9biL3K
2MaGu1sOq7NzE/IRyes6tDZu7snCbmYkyrTe16Gz+21aKiL5ySBBYxifhO09
FlZh5SaDE7viVPGI5FkOTGnTuhjsepXAyHNTOZSNybojEcm3DMJ03pqfsBWs
dtej+8pg5aUPPacRybsUmCYpDP7MvEK/qbe4WAo/8CYlJxDJvxTKQ6PZx7Df
Jfdyp++XgH9E7BdHEOlDCZTZSqd52E7efVd7aCUgcVMuOIBIP6TgkCn3+Q77
8vhqTl2AFK4UirL2INIXCfg7/k7bhW3Kst0olkrAM64gZSci/ZGArSaSsQNb
nafbWjdLAs8rDPq/RqRPYijw7arlYEckNTwIChVD/5y20u2I9EsMvc41Jf7Y
Kr+mQuWrYtgyJ0bFRqRvxfA+dNlLP+z+EWqEu7cYjoiE5psR6V8xvNatPrgJ
GzKfaoueFYHVqRfKjYj0sQgsY/+2pmbyeVwabXuwCD4G3b7sjUg/i2Av5+Qy
L+z5Xha9R/tFIGCFVXjo+4odv5bjjp01t9nPJEoE3aXTY276/orgaMyhChb2
aQ5/Qm4qApGije+q77MQkv3aPV2wPb53S5yWCaHPaNDUWd9vIfR/WTnMxF7M
fa6o2CYEpw7Fs3X6vuP732Q9/Qp7OFv2W8SAABbuHnjC0PdfAOnWIRon7HPt
E8NLcwQw3FLV6qj/HgTA3XnmtQN2Bn3b2WAQwPzik9Nr9d+HAHhp7OUz/he6
BJAI
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
NayXOT8RNrBIxvTb55/5LiP/A72CFiY=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 1.95},
  PlotRange->{{0, 0.6}, {1.95, 2.05}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.52018697181775*^9, 3.52018749888025*^9, 
  3.5201881175365*^9, 3.520188555599*^9, 3.52019129138025*^9, 
  3.520282749599*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"UniformLeftSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"UniformRightSideCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"UniformMidpointCloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "200"}], "]"}], ",", 
     RowBox[{"CloudList", "[", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "Pi"}], "}"}], ",", "1000"}], "]"}]}], 
    "}"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Green", ",", "Green", ",", "Red", ",", "Blue"}], "}"}]}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", ".6"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1.95", ",", "2.05"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520187026099*^9, 3.520187032099*^9}, {
   3.520187216645875*^9, 3.520187239708375*^9}, 3.520283887333375*^9, {
   3.520283948270875*^9, 3.520283948708375*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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

     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
T+5/AG3Bn7Y=
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 1.95},
  PlotRange->{{0, 0.6}, {1.95, 2.05}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520187038645875*^9, {3.520187224224*^9, 3.5201872447865*^9}, 
   3.52018749956775*^9, 3.5201881185365*^9, 3.520188556208375*^9, 
   3.520191291974*^9, 3.520282750849*^9, {3.520283921520875*^9, 
   3.520283960583375*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ManyList", "[", 
   RowBox[{
   "expression_", ",", "range_", ",", "n_", ",", "meshrange_", ",", 
    "valuerange_"}], "]"}], ":=", 
  RowBox[{"ListPlot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"UniformLeftSideCloudList", "[", 
       RowBox[{"expression", ",", "range", ",", "n"}], "]"}], ",", 
      RowBox[{"UniformRightSideCloudList", "[", 
       RowBox[{"expression", ",", "range", ",", "n"}], "]"}], ",", 
      RowBox[{"UniformMidpointCloudList", "[", 
       RowBox[{"expression", ",", "range", ",", "n"}], "]"}], ",", 
      RowBox[{"CloudList", "[", 
       RowBox[{"expression", ",", "range", ",", 
        RowBox[{"4", "n"}]}], "]"}]}], "}"}], ",", 
    RowBox[{"PlotStyle", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"Green", ",", "Green", ",", "Red", ",", "Blue"}], "}"}]}], ",", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"\"\<mesh\>\"", ",", "\"\<value\>\""}], "}"}]}], ",", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"meshrange", ",", "valuerange"}], "}"}]}], ",", 
    RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.520187050989625*^9, 3.52018718794275*^9}, 
   3.52018853988025*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"x", "^", "2"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520187322224*^9, 3.52018733750525*^9}}],

Cell[BoxData[
 FractionBox["1", "3"]], "Output",
 CellChangeTimes->{3.5201873401615*^9, 3.5201874996615*^9, 
  3.52018811900525*^9, 3.520188556270875*^9, 3.520191292302125*^9, 
  3.520282753333375*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ManyList", "[", 
  RowBox[{
   RowBox[{"x", "^", "2"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", "400", ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", ".4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     RowBox[{"2", "/", "3"}]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.52018719588025*^9, 3.5201872059115*^9}, {
  3.5201872525365*^9, 3.52018729694275*^9}, {3.520187348552125*^9, 
  3.520187348833375*^9}, {3.52018738306775*^9, 3.520187396099*^9}, {
  3.520187506489625*^9, 3.5201875192865*^9}, {3.520286395739625*^9, 
  3.520286408302125*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
yA/bdbcJZ7Q6SZwviMTBtqIpmoqMSH8i8fr6P1G7Cff032ClIRJfQz8HfyMs
1KNIbNcrl9moxODbsKztc59H4Ij1E/srhIX6FIHYN4arJk9hsGPBExOvqAho
5+Z8DyMs1KsI/Jmd7vKYcHOMl5nu1AjI3w3LWKDMiPQrHHX3MrenEp7Mu6XA
uxUOw+6utZ2EhXoWjrZz7j1mUxl4K9QeZ3mHw6Dskcd+wkJ9C4duZ2n1B8JD
VoZ/b5Aj95/fP2LJNEakd2Ew1r+lv5/wkLz21XXXwzB6o8+Gd4SF+hcm9F8V
Bv5lo/vbeWHosLKNSyUs1MMwHNZdt/cF4dlttSt+Tg0Du8W6WGM6I9LHUDTb
DDg2gwZ5rV2shlCELIz6e4ewUC9DMfpUnPmEGQwsS4p6XieGwkRBN9uZsFA/
Q5E1+qpUEeHnFefC9xmHYvMLtdyvA68PjlAcTvC2NVFlYBbN+i3xNQSbl3lr
JxAW6msISrd+1HtA+EZ3y3CVf0Nw9uYxL5mZjEhvQ7AqX73BnvDZUzrtzzgh
EFMc5ZtDWKi/IShhzi9uIVz+Yln0rBkhyE9JWD9djRHpcQhsc+4XsAnf1lvs
+a01GIdyKvROEBbqczB0GuKlOwmn+6+rM84Lxu2K+fNnzWJEeh2Muoz7RziE
v6us9ejeEgyfInPH44SF+h2MSaNDPNoJm21lhfyYHoxH1SYPp81mRHoeDC8f
hyQnwm8m1JZtehOEA9HhB7MJC/U9COtvW4xuJFy5keUpcToIetUbnknPYUR6
H4Qj0rpjVhI29Fxj/N4vCI+LHAriCQv1PwhWA0JK+N3YrxYjDILwR3+yZN8c
6gdBWJTMa9KYS3gNi8wgPNkeMpE9l/pDILJTvKoPEvY5o5pUdi8QeSYxb+rm
Ur8IhIZkU6SkOtGD2nOvDPYEYuHS1GRjdeofgejac260H+HsR7237zsH4tdk
y1HH1KmfBKKv0jqxiXCSMqPqphGI9KAL0aM0qL8EQp23+bsJ4Z+yJWD9DECo
u2avrwb1mwBYP+4NzCP8piiiYM/dAHSp8sPrNaj/BMB+IMBpMnCJlldXPBCA
CO3XSgs0qR8FwD929rWthC0kX3zZ5R4A38Uj3mdoUn8KgFm96qlKwufK7Te1
GwbA6ZJ87wdN6lcByH8RUK84j9RHnRZrklQAqkuqFlnOo/7lj5B1CctDCO+L
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
9S8I/w9l8T5x
     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1:eJxd2HlcTPv/B/AmhYRC6FZIFGkRdS2RlyyVtlHN4F47TU37tO81k6SEFksk
lJtslTWKkF24yLeQ7WYrS67IkrXfeZ9z5/zxO87jcR7PhzPNnHM+n/f79TlD
l4V4SlRVVFSyBSoqdOS2NnDHW/8dm/471kPMbg247yIdXXSq/v+d14D8LbTV
YsjKNx6Vgxv+O/8iPvelTzQgd/gsZj8H97PXTGMmNvz3uRruOLUBBpdDmb0a
vS+V2sTNUP69Kjg9idMpd2yAw8CFEXUzj+OtduWhns7Kv1+BU6n0DQ3QmXSo
36RDR3D2t7tG9m7K7zsMUVtYj0XuDejDbodwbqjFs+lC5fcf5I6zGzCY3cpR
mzi2Zets5e8pReoYs7WDPRow8kBRddqHfTCxTRq81kP5+/bCq3Iwc8UN0E1b
yux7oNLT4dxkT+Xv3Y3JasHmKxh7D9X848q0EqQcfZBf46n8/btgVcRcAeN4
5iqfxBVj16mzA028lNfzF2SXKpxmM6a7nvp5J/xnvv0n0kt5fTuhU12Qksd4
U7ze0qrdRTj18UdVhZfyeosgc7rWcYtxqva07kNTC7HdMmfHKy/l9RdyR1ED
ug9JaDvbbQecx2xZrCNS3o/tCNtx/asJ40H19sy+DUk/9wsmiJT3pwBLrjv/
5cj41omzOl9Lt8J1z0O1OSLl/cpHxrodjssZ6xXbM3s+ehYXpIeIlPdvC9jL
ZvxNtyDr7NfNKN3dRbpSpLyfm6GyIscqi/FH9UT7xbfy8Py3INfNIuX9zYO2
Qv9aIeOBgWcHBJ7dhHxh0Ik9IuX93gTDt8dMDjKeq73eLL12I+ZuUNE/LlLe
/41wpRvLeKL66N1NLzbg2omR586LlM9jA/xD2lbWMtZhtw1YZne+/YZI+XzW
oyDUom8947MxZt8NPNcj4tjglnsi5fPKxZ8e36MfMd7e97mp/fZcNFnvr30i
Uj6/XKjR1zKWDTmbqPYlB9aZamdfiZTPMwej7ZKD3zLuNSJy8eD5OdjTktLa
JlI+3xwY3B475SPjSferhaG12Sj7IvP5IlI+72zscXnu+42xtpo9s2djtNuv
GT9FyuefzR2ZeW3YoRjSociC1cJf+api5XjIgpdr80B1xr7H2/aPyVkHXWt5
TDexcnysw8MR4ac1GD9QVEUtKV+Lg3WObzTFyvGyFks6/VV6M9bc2iVjzr01
yP45ulNLrBw/a6B75PbLPoybahRduvVeg9aM2NP9xMrxlAmdUeMV/RkL9V8e
VbhnIk+z59iBYuX4Wo2iZy11uoxPL/df8m7zapS27VuqJ1aOt9VQMx3xVJ9x
o7X2xnWtGTjuPlQ0SKwcfxlIpXJF3//qzo+DThkYPN5Hy1CsHI/peP1K5c+h
jPe1B2hVlaZD/9eJzUZi5fhMR82S4deHkdktHd4bLnwcLlaO11WIcdDvZ8L4
SnGMwnX1Kty+VzhihFg5fldhRtOlsSMZyxSaC5pUV8FzS4eNqVg5ntPQ4rXV
chRZqhggVaThxJ3ehmZi5fhOg9PJMg1zxl0HzFuiUE/DzXN/vyFz430lBhjX
XLJg/Haewur2upVY2FiXbylWjv+V0KHyzLh/x9PX3QatRMHy8NFWYuV8SMUh
y9Vt5PlnPAvvHEjFvpIb+8eIlfMjFQ/0E5aOZfy9cZmkwyEVpR+u9rEWK+dL
KubdbKsmq+59Xm3+dAUqTxsutxEr588KSBdkqv1OnqDoN0GxAlM+Lyoic/Np
BbaXXZ44jvEZbTPnZ8NWIGLTu7/J3PxKwZz6XwvHMy40V7h9r03B9gr912Ru
vqWg47p/2ATGv49QVM4OT8EEDa0vZG7+paCG2hHjmO9DFceHpCDj5/1PZG4+
KvC3kb3MlsazYmdZ15sKbA+KbSFz81MB15s75k9i3FdX0UdXoUBN95vXydx8
VeB1leGkyYz7XPmd2RVwkpWVsGY3BdKPrtGyY5xd0BzwqVUO/4ENkWRuPsvR
alfQSN6tLe2hKJGjovWz7RSxcn7L8arv1y3kH3vf33ZbJsfy+orPZG6+y+G6
Hh6g+aymqphqKMfMr7v3krn5L2ePUxm3dfshSK5JhuTrXNFUvh4kwzXvTAk5
dJrzdsmMZFz5MPPLVL4+JENn/deZ9oxrWgVHul1PgmHEy1x7vl4k4XJPw8fk
iBeCWtu5STgiKhsxja8fSeioLQghr07reHbnRSIWRX2rmMbXk0QEfqz7RrYx
rxQdi06ETYTllOl8fUnEvTN6cnJETXBWRc9EPEdRzXS+3iTAu/NaJznnySL1
I8UJqDtQbDeDrz8JuEhxg66/47wgCwlY25laMYOvRwmIW7b9HflL1w0ZZo/i
MWpGxsiZfH2KR+pVtyXkTOv7doGJ8Tja0L5pJl+v4tGsuuI6uVEeOHWcYTw+
lKsKHPj6FYeXHbE2ZH3ZRT3ZxTiEX3jn48DXsziYV/tvJgfp3SoRBMWh1uv9
FQe+vsVh6tWMDrKqS9zX/w2IwwUz2xGOfL2LRblXdzFZtei5e925WPzx71eF
I1//YtFE8YpxWGXPjueyWNS5Lmx05OthLK6sbezixNj06a1Z3w1j0TplnYUT
Xx9jEG8rn0P+n67VWsH/YmD++9EkJ75exmDVGcsSsvPB/W0v0mIw1vHjdSe+
fsbASlejnfzo9OG4vMkx6LsoVHcWX09joGs8xo48NVnwU/1jNDznuy6dxdfX
aGyvu5RKPt/a1N2oLBonJhfvnsXX22jYjHtZSz601+b5Q99ozLXb9GYWX3+j
wcZJxtWPHZJHDo/GrXY7C2e+HkdDZDLFjXx5/PSAL0+iEBdcEejM1+cofK0v
ySRnh3nVTS6Kgplb/33OfL2OQnlFlyvkr0Ye/q1Lo2DcGPHCma/fUbgdHKDq
Qte3TBD9bVgUxuu/HuzC1/MoHJW125Jb+t+qnN8SCf22jDkufH2PhIPGwVBy
zZ+CAPXSSKzWl65x4et9JOZFHS0h2wbMnvw2NBJ7/8irceHrfyTY+Mz4jdZH
J42JkQgNMW134ftBJJrvPdR0Jc8WMHskzk8cPdyV7w8R2JdpNJkcfMB4VeXV
CCSdrPRy5ftFBPbvbfcn+946/GzixghsHNWgcOX7RwQzrxZvJuff/HT52pII
jP2RW+7K95MIlFaHXSCvGtJg7GMRgd/aOhtd+f4SgbvWk9+x5/c7CMH3cFjp
m6q58f0mHGWjr+iSW/bHF2+sDcfi93oWbnz/CQe7XGC8PFnX3GBLOM65PxG5
8f0oHFmn5krJTt0et6/1C8dU+ap4N74/hcP3Teg68uHqufOf24Zjo4tukRvf
r8JR8CL+CDm7zkrwW69wXPu87aIb37/C0L8i+S45T+5SY9wUBg+h0Ss3vp+F
Qfo27Rt5qpmgTO1oGFYcLNd05/tbGKYcyTcg9zuY3vdgehjuaLhauPP9Lgzu
587bkd/nymVGi8JQ/FzV3Z3vf2Fgl0eM/6nOj5ljE4ZNfg+C3Pl+GIZlZ6IS
yY01vj0dNcNQJXm0xp3vj6E46qRdQI6oxKR3T0PhJNTe7873y1BI5z+uIpu+
dZjqfDIUJs7xV9z5/hmK+vaWO+SCnWvkXhtCYWBu/MKd76ehsDpn3U6ODZ+W
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
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
e/Foc1E8kViPbS9Gd4uT/TIyeTXff4iDQc6eQ+VH2XihTXk2Vl2L74eWJM6z
4ED53LariUV0OLde3/mFn/TTkIG9IvOo6Drw5Uq/WCfkC/S2DJN77NA4Wn5B
pg1P/8iIb73MQIXczqsy/BQ0KjslDeYzMR4zJbLwRxM+tP+LtfpHh0Rc/0o/
NzpGRLvUm/JYkLf4Nz98SQ8cB6IHBWbaMOK8wkLWuQ9PlHIK2Hn9uP7Zo/jg
LBvR22Qv5QX1Y+jTsx1PO+Ixzb975As5v87zNQ+dXX4PIm+uXX95lsD1AyNa
C4368NrSrPb+RgrSdY6fYfGNgaasu0qupwO2fUVyP0lPiKx68ln5GQW5VQez
61QZMOfrMaw27IGys7eZLtknZPh+FgE5D1P7Rlj+FCysOK2R5chAvsp3y3SN
SuSEvzVO8ifzKWEwYPJfHeRV4jz7SP68/SBm829+Lp5/FlcQDuBhKCS7pS+8
AteSXvmk7yF52+L04lDVTvyrCg/9vLATb7ZuI56Y8xDR/36NSiMLaeMXUkum
Gdix91OP4o82TNhqnBU37UJpTp6RlzUVHeoGOx2UnyLDvIAoOkzg9TzfCMY8
GlwESxmLlZjw9K2nJ56oRuTc0WidWQr4Y+/+OvOgFUOeSxPODnVBXHDHo/Yt
BL7O+1B0bhMD4YyiLe/GayAzKaqTEk/FLf/jXTGPuXjfGnu3N70DPf8FU5Z/
5cC96e7E2N8OLGUbLF9RN4zLwbTlu11akX2z/kTeJyY0VHa51tp2Q477XIw/
m414j6F7XrHNiIpeHLRRMh0Ugqa5juQfqb7iK+5WDETWjJys721B4qbw1kP2
T9DSu2pvF5nHK+8+1P+4dQz+745quxFMGDRMiDPbKxFgLxYdy6VhwRLb0++l
R+Cj9oAYr2Djwf0lt/7Vc/DgS8e3VMseVJ0xP6bpTe5p0pGgyXQmrqV8aS7w
Izn/i0jZqUAazr3+I5YR1w3Pzfyl/0JJfnwVeciprA8735uP3uum4JjBv5Tl
7oNwaRJfveJmM07oG7U93032nN7He6sMCeTVbfA/k94PM9O1+/4KdGBLbpDe
XjLH77Vee0Q4EtizyPVryvk2ZPXJRyaR/KJe7immeW4YN2VXV+1Z2wduLVNk
txEXrz3UJssKG6CV/YHC942Bsma9kPePabgl0xT8nyAbkqs9dD6FNSNa1MHq
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
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  PlotRange->NCache[{{0, 0.4}, {0, 
      Rational[2, 3]}}, {{0, 0.4}, {0, 0.6666666666666666}}],
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520187300770875*^9, 3.5201873590365*^9, 3.520187397724*^9, {
   3.520187500583375*^9, 3.5201875225365*^9}, 3.520188121458375*^9, 
   3.520188558927125*^9, 3.520191295020875*^9, 3.5202827572865*^9, {
   3.52028639900525*^9, 3.520286410958375*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"x", "^", "2"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{3.52028403869275*^9}],

Cell[BoxData[
 FractionBox["8", "3"]], "Output",
 CellChangeTimes->{3.520284039224*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ManyList", "[", 
  RowBox[{
   RowBox[{"x", "^", "2"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "400", ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", ".4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"7", "/", "3"}], ",", "3"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520187566489625*^9, 3.520187589083375*^9}, 
   3.520284001974*^9, 3.520286467724*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
P2iQuFIh9gXi/wPzLG65
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1:eJxV2AlYTfn/B/Bu042EQmgqJIq0iBpL5H0zVNqu6l7M2LeRdZJu+3Jv+6JV
iiRFslW2opJkFwb5YYQx2cqSmciStf/5nDPnPM//dJ6n5/Xcc+6555zv9/N5
nzN0ye/ey9XV1NQyRGpq9P+/RfL//7eD+68hkbPLM9xz8x1ddFLjv8+b//tc
LMnbSksThsS98qoaLP5v+9v40Jf2EEuyhs9g1pvwPH3FPHii+L/9b3D7S8QS
o4vrmfUqel8otQudxn9fA1weheqVO4slTgPnBzROv4jXulWHe7ry338eJ2Pp
CGKJ3qTD/SYdPovTP/5p4ujBH+8MZO3+PRZ4iiV92OU0zgy1evKzlD9+PXf8
mWLJYHapQ0PE2NZtM/nfU4vYMRapg73EkpEHi2rj39bAzD5ycKoX//uq4VM1
mDljsUQ/fjGzVkGtp9OZyd787z2OyRrrLGMYLxuq/culqccQXXE/r96b//2V
sClizoBxGHOWj0IrsPvk6YFmPvz5HIXfhUqXmYzpqsd+OIJV01//rfDhz+8I
9Grzo3MZ54QZLK7ecxgn332trvThz/cw/FyudN5gHKs7tfvQ2EMosM7c8cKH
P/9D3PnLxJLuQ8LbT3c7CNcxWxfqyfjrUQ7/HVc/mTEedMuRWcsQ+e2AaIKM
vz6lWHTVdZcz4xs1p/U+lR6A+94HGrNk/PXaj6S0Hc5LGRsUOzLrfvQszk/8
XcZfv31gT5vxZ/389NOf9qJ0zw++cTL+eu6FWkymTTrjd+IIx4U39uDpj2vd
t8j467sHuirDK4WMB645PWDN6RLkSdfW7JXx17sExq+PmR1iPFt3k0Viw27M
zlYzPC7jr/9uuNOFZTxRPHpP87NiXKkZeeasjL8fxVj1e3tcA2M9dinGEoez
Hddk/P3Zhfz1Vn1vMT4dbPHFyHsXAo4Nbr0r4+/XTvzq9SXoL8YFfZ+aOxbs
RLPtgYZHMv7+7YQGHZax35DTERofi2CbonH6hYy/n0UY7RC17jXjXiMUCwfP
LcLe1ui2dhl/f4tgdHPslHeMJ92rla5vKETZR7/fPsr4+12IvW5PV3xmrKvh
yKyFGO3xfdo3GX//C7n7LxdLjDtVQzpVO2Az/3ueupwfDzvg494yUMx4xfH2
A2MyC6BvqwzuJufHRwEejNhQp8X4vqo6cFH5dhxqdH6lLefHy3Ys6lql1pux
9rYfkmbdzUfGt9FdOnJ+/ORD/+jN530YN9erfujWOx9tSSF1/eT8eNoGvVHj
Vf0ZSw2fV6g8tyFXu+fYgXJ+fOWh6Elroz7juqWrFv27JQ+l7fsXG8j58ZYH
DfMRjw0ZN9nqbk5r24rjnkNlg+T8+NuKWCpXdPwXd74ectmKweN/0zGW8+Nx
C16+UPt1KOP9Hat1qku3wPB7zRYTOT8+t6B+0fCrw8jssgXLss+9Gy7nx2su
gp0M+5kxvlQcrHJPzsXNu4UjRsj58ZuLac0Xxo5k7KfSntesngvvrZ125nJ+
POeg1Web9Siyr2qAryoHNXd6G1vI+fGdA5cTZVqWjDUHzFmkEufg+pk/XpG5
8b4ZA0zrL1gxfj1HZXMzbTPmNzXmWcv58b8ZelSeGffvfPyy26DNyF+6YbSN
nJ8P2ThsndxOnnvKu/DOwWzsL7l2YIycnx/ZuG8Yvngs4y9NS5Z3OmWj9O3l
PrZyfr5kY8719lqy+r6ntZaPN6GqznipnZyfP5vgOy9F4yfyBFW/CapNmPJh
QRGZm0+bUFB2ceI4xqd0LVyfDNuEgJx//yBz8ysLs259nz+ecaGlyuNLQxYK
Kg1fkrn5loXOq6v8JzD+aYSqauaGLEzQ0vlI5uZfFuqpHTEO/jJUdXxIFpK+
3XtP5uZjJv4wcfSzp/Gs2lmmeT0TBWtDWsnc/MyE+/Udcycx7quv6qOvykR9
9+tXydx8zcTLauNJkxn3ufQTs2bCxa+shDW7ZCKxYqOOA+OM/JbV79sysGrg
bQWZm88ZaHPIbyLv0fXtoSrJQGXbB/spcn5+Z+BF309byV/3vbnpsSQDS29V
fiBz8z0D7pvgBZrPGuoqiXEGpn/as4/Mzf8Mdv5LGLd3+yqKqk/H8k+zZRKh
HqTDPfdUCXn9VNeC5dPScent9I8SoT6kQ2/Tp+mOjOvbREe7XU2DccDzLEeh
XqThYk/jh+SAZ6IG+9lpOCorGzFVqB9p6GzI/52cHN/55M6zVCwI/Fw5Vagn
qVjzrvEz2c6ySnYsKBV2AdZTfhbqSyrunjJQkgPq16VX9kzFUxTV/yzUm41Y
1nWli5z5aIH4aPFGNB4sdpgm1J+NOE9xg86/86woHRuR2hVbOU2oRxsRuqTg
X/JHzewki79SMGpa0sjpQn1KQexlj0XkFNt7DmsiUlBxuyNnulCvUtCiHnOV
3KRcIxlnnIK35eoiJ6F+JeN5Z4gd2dDvvIHf+WRsOPfvb05CPUuGZe2qLeS1
BjdKRGuT0eDz5pKTUN+SIbmc1ElWdwv99L8ByThnYT/CWah3SSj36S4nqxc9
9Ww8k4Rf/vmkchbqXxKaKV4x9q/q2fnULwmN7vObnIV6mIRLqU0/uDA2f3xj
xhfjJLRNSbNyEepjIsLslbPI/9O3SRX9LxGWP1VEugj1MhEJp6xLyK6HDrQ/
i0/EWOd3V12E+pkIG32tDvJfdUdCcycnou+C9fozhHqaCH3TMQ5kSZTom/hd
Arznui+eIdTXBBQ0Xogln21r7m5SloCaycV7Zgj1NgF24543kA/vs3v6YEUC
ZjvkvJoh1N8EsHGSce1Dp6iRwxNwo8PBylWoxwmQmU3xIF8c//Pqj4/iEbqu
co2rUJ/j8elWSQo5w9+ncXJRPCw8+u93Fep1PMorf7hE/mTitaptcTxMmwKe
uQr1Ox43161Wd6PzWyIK+jwsHuMNXw52E+p5PCr8OuzJrf1vVM1tjYNhe9Is
N6G+x8FJ69B6cv2votXi0jgkG/pudBPqfRzmBFaUkO1Xz5z8en0c9v2SW+8m
1P84sPGZ8Suddy5aE+Ow/nfzDjehH8Sh5e4DbXfyTBGzxuHsxNHD3YX+EIv9
KSaTyesOmiZUXY5F5IkqH3ehX8TiwL6OVeQVN448mbg5FptH3Va5C/0jFh81
F24h511/f/HKoliM/ZpV7i70k1iU1vqfIycMuW36m1UsfmzvanIX+kss/rSd
/C+7fb9DEH2JgY2huYaH0G9iUDb6kj659UBY8eaGGCx8Y2DlIfSfGLCPC4yX
RulbGm2NwRnPRzIPoR/FIP3kbF+yS7eHHakrYyBRJoR5CP0pBiterU8jH6md
PfepfQw2u+kXeQj9Kgb5z8KOkjMabUQ/9orBlQ/bz3sI/Ssa/Suj/iTnKt3q
TZuj4SU1eeEh9LNo+L6O/0yWWIjKNCqiEXOoXNtT6G/RmHI0z4jc71Bi30OJ
0bij5W7lKfS7aHieOetAfpOl9DNZEI3ip+qenkL/iwb7eMT479q84Fl20chZ
eX+tp9APo7HkVGAEual+RU9n7WhUL/9ro6fQH1WocNHNJwdUYdK/j1Vwkeoe
8BT6pQq+cx9Wk81fO0lcT6hg5hp2yVPonyrc6mi9Q87fuVHpk62CkaXpM0+h
n6pgc8a2gxyyYWqS5joVGpV6IqnQX1UIsb7Umzzpjx69F7qoEJYqNZIK/VaF
vvMOmJNtbea3zhnGfC57ME4q9F8VhtHjILn9u277dyXyt9TPlAr9WIl70xXz
yTlO6XuN7yth2yxaJRX6sxLhOisCyZe2m7a1HFfCKHh3tFTo10pYnTiZRpZp
iSZisxJRgYfypEL/VuLEtMgS8oWPzj3MNiix8uSII1Khnyuhryg7Sdaw+/Nj
rpcSs77pNEiF/q7ErafSW2SDBUMqM22U8Du+9m+p0O+V8P6+8iW7Pbso0YLp
76VC/1ey/X8m9fvmIcxfFFpO5fUgc3kgCr9879+f3PezaL9RURTKx/sPYbdn
80EUbj07aE6uvF9Yqrs0CkuV123JXF6IwpHwRgf28x7Dpn0wjUKTxzFnMpcf
onBuWaQXWT1teufFF5FwtBk1l8zliUh0H1SzjPxKVBOqLI/Exc3W68hcvojE
2B8Sg8hPZ+buNgiIRI+rF5RkLm9Ewkr+Kom8weBBSKZ9JLaKPmSRufwRiUh6
3Cc3i5g1EtOcTxWTuTwSgS3bI8vIlwcVPhBdjoBfpukxMpdPImAUUVHHbh81
eNjbrAi4VFtcJHN5JQI9t6dcJx/xVyhL50XgTcStP8lcfonA+4OazWSDuV93
WY6IQGGcyXP297N5JgKd0pHt5Aunps1b9zYcxQv0O8lcvgnH3a63XeTWK6Kc
tXXh8FdWdfOS83knHO8tVuqQpyZ/+dUsJRwZ7uKBZC7/hIN9vcE4fkavxuw5
4YjUEZmRuTwUjidYbMVuX2g9sdIsHDmicjsyl4/CsWNL6yRySmr8PzHvw/DA
uffPZC4vhUHby8SVHDYlcfm3c2FoeDfMi8zlpzAU+vebQx7WpW8xeHMYtLTe
LGC/j81TYVjzvnY5WfxP3ZPHy8MwJiBoDZnLV2GoqTfeQL6medfVZXwY1vav
DiFzeSsMtQckSnKxSdMYN60wmNUejydz+SsU7OscxgsysqOe3w9F4UjFJjKX
x0Jh9ObEVvK3VwmjBx0MRVbPjh1kLp+FoudBgxLyL49svFqiQ3FM27aUzOW1
ULyVTT5Cdk327eY4OxQza8dVkbn8FooMf5M6cqHR+YRRlqE4uqfrLJnLc6Fo
T77WwG5fKGLWUJxzTb/Onh+b70LQpjf1NtnKd/XAHX+GYPWA1nvs/mzeC0Fu
WGQz+Z6u/OXw8hD08OveQubyXwjY11eMu+rTeo2OC0Hr4XftZC4PhmCsz+wP
5PKgJ9on5oVgm0XZF/b+s/kwBP5LP6h5M26x3BZ1wY6xia0mmcuLIahNX6pN
vp0h6ivtFYIbjQm6ZC4/BmNH78L+ZIx/E+rdEozY1aUGZC5PBsO9V9kQsn3X
EuW1U8EYrb9zOJnLl8F4fDDFnJyfJPpQvzUYyR9XWpO5vBmMq30cbMnVWfW1
IwKCcdZYPIHM5c9gsK/rqN9rBp9RkwbjzM4ARzKXR5nfM9vIiVxYHC1yHRWM
4NhqV3Z/dgmG8wx3KVlTf5FSpBkM0/O3fMhcXg3CrQE+c8iDpL96mT4OQtG8
i/PIXH4Ngm/FmMXkcJF11tG6IORMylpO5vJsEKx1Xqwkp0w8tnr/tiCcdxu3
jszl2yBs7BXqT+51Ia9P95AgOPlVBJK5vBsEefqzUPJahejM5VlBOBbXK4rM
5d8gsK8nGad+dzzfbhfEPO9MTSBzeTgI78KlKWSt8Py1wf2C8PaOTzqZy8dB
yE6SbiIPXPR2wKK3gdhXNjWXzOXlQBTMtdpGXnxJZVbSGIi0Azo72O3Z/ByI
KZUvdpIdDHb1mHE4EIMzTpSQuTwdCFefuP3k+huJ9s6Zgcjq71zO7s/m60Cs
ea12hGywQjRux/pA9HhzpJLM5e1AzBg3v5q8y3VSnNQ7EPU3u2rJXP4OBPs6
lvHD+uSqWbaBGPGb9Tn2/rF5PBDX4msukrPLx/ge1QvEQG9cYe83m88DYfmg
9hr5q5W53bIPCnRMsL1J5vK6AuLwnbfJux+3nV1xV4GGqh5NZC6/K+ClvuYB
OfOz84XaGgUiVl/4mz1fNs8r8FjT4Ak73q8Oe7N4uwKPWn5rIXP5XoGcQWUv
yIvEc0SzlMz2tW1t7Hxh874Cq+6YtpMfe4fX5C5VYGvYnA4yl/8VKKTXz4y/
R59oMXVWIKhs/ycy9zygwIO5l7+S3cR7Z3WNUmBO05MuMvd8oID9uI/qPozP
n+vzyERHgYJoDU0y97yggN81bS3yNve/lqR3BGChea+eZO75IQAvdnbXIbtb
Pqj7+W4AFrt+70PmnicC8ND6Hz3yo/SSv6acDIB04d2BZO75IgCrXtYakF1F
gWVROwNQ93DbIDL3vBGA3a4KY7LSRWQiTmT2nzxjGJl7/ggA+7qd8f8BIzzX
5Q==
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
oM/Xt+swwOVDsO7XAQ7U7ao5ZTnyB+5Y+XgNMMm4NvrTn0yCJz3FBRJTuYdg
TzTcNFmhwwmO9nOxh7hQJFKXS5t4XlyfFrMXFSl4li+8vOo9wffDWwOfLy0A
TwWJXqA+Czc3XV2jvosHBYfyjCrlesBuzEP2pQWRdy8na+yPNcNw4vh9JSvC
d33eKpgFz0B8e9fRvE9DEJ/edvr66Rrw+JXTpZxDwQ9iW7PXaMyCotSDp/kO
LDjS193oP9gDQxJZWerNVBQ2DmY+FeiHiKyxXw/F2DHe7KJcTEQpmPyIj1gl
/L7hhda6j8ONUJ1T+/b/f294ojYW5f63DKTu0SqcCsn4OvrN+b2tZXD46TMr
DxYqUstP5XGHTcOdv2DI38qKIyvv2WJYp4C013PkjyEFT1+paU34NgY1wROH
SiWpGLRNkv3M4hRMnNM+AjXcyJ178NGWrDlYK5edGejBiywpaiy3v85AQX9O
rtguIp+5I1Kz/9JBOeCgjHgYN55YFt6o820efCQFzCZKebHobcXGgMQmeOD6
g0VmPeFbtKC8odxeWKNR8Vkgnh2FNhlZhyETVpy8xYJJZMyg67da3+iBGt/3
1z3ZeJDj6K9zxt+Ggb7/Mudp22XYYWn07Y5iJ7jVnOsoz2DDpbk2Y/uXtdA6
diJVnvCjcz2zuU3NA9Dk8Gt4pZfw0WUev/OtraCop1HjsIOKjPbafVHnuiBT
/0tv+Q6iL5ZO/rp5sBpKJF/pGp4n8o++uU+3PB98dvBvMCDm+VrNDbJzTS+4
9jVXdjRyoW2jXbm0RA94P5u34H/Iijtv9MVr/puFFymXjqYf5cWrx00KY+8P
Q3L8OdfuFDbc+FB56pg8HSz1prZ6faRi2OTVDQ+XpmD6Ub331U1s6Lx2kcah
MAVv7c+vhItPg8ly831d+iRYb3g98+88Cb1k2Yvqp+ag8PTnHFcjBpCPJD8a
VxyHfXGCf/S1eDHMz5STe7YTetoPPDmvxIEPJi+FBsb0gvLOqSx7gpeDe/fu
c88vgLoz/tWJNhRsMGeJ/X6iA0408vQnrmdDG/lPY28uVMChAE1rvW7Ch7oO
/7698hZoPxJKWK5SUPRB76aTP/sg+8i3ngu3lyCTeSDaTaUGGOfLLCnEzx+8
9eihdSSRx1nnSwfWL8O5V+f3beLvAZP2I+0inRw4Qsn6tuXELDzr0K26LMKJ
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
6KZFZDMJo/T6tomZMeFtbJVjZ8ocPNkv/XchuA2+Vp7XS33Ohucjw3y/uDZB
0FCj290lNvQ5sPOPfXE9CAZPDe1qoaIO5zVdBTsGON+obf2mT8ISORmfy740
+PK63DqjjRW74jt36i39hUTq7QwvYh916zeOfbKfhiTb9+foDDJaSq8qaqQ1
gR1Cgo8zBet2HK85Q5+BjapVsWo3+FDyiZzt5VQm+MD9pqandPCcoa7j+ceA
an3hTAFWMurx1njPi1fC3P28g+/jycgRLl8Men0galJ1wESNE8curec1zViE
kl8f6U+py6AqcNEm4k49HKppnjbWomB0Wh7lIisNHMwMNpWXCqLa5ZSXNy27
gWslIGtMiuCJs1aFfX7l0BUTHHpTioK+oZMiIxtmQY8xm6U5w4StcRyLk/nL
8E30bFanUiGYr3HIeWLZCm8uRs+QPxJ+vO2FxCenbhj5d1XZ2o6C+/s7udV9
p0BM4afKw7fcuPrO5ns+xyS8k7pmz+JMxa3ZPoJZAlNQ61XeVtvOhQri2mS2
ykGw3qsXkCHLinnCKqypxH52Lo5VCXxlwXnznf4SnTToMTg3PLF/BchiL1Oe
ZybBw8jjew6eoaD95LX8jS864KRGV0nRB1ZkNTE+2xc9Bqv/rRoeyuTFHu6G
qon8Lth8Jc9g8w0O3FHmaL89pwAeRSowdp2l4Ijw9YIDSTPASHzyu+siO+q/
mW7cJMmAg7bekwlnOHBNeMOsJ8FnL3aVKYQ5cmDoW4Oeqz9nwLVC781FTgHs
OX5p2x93JkQbyJm0ps2Cn98r3kmClxq/VcTXEvtv2rzlY6J4DVg7DqxTJvj2
4kH90jTPVgjBWPxeTsGEncVuJS8nYP6AvaLoaS68/TB+UZXwp74Ot2Td4hWg
+VYLZBwYgj3G+48NU9lxh1HNESGNeXBwuB5+c4wPKUUp7qs3muCOx/e0xjYK
7na49dPCmHjeV/juq2QvgaL//aDDAyOwlkcyybmeE5OfZbyaCpmDAceUjfNB
3Kgzc6Gs8PQ0vEo5WC1+k4TZaOWbltgLK82EmbGzYeUZNiMRe4KHv9YsWbEQ
PifJYqB/lQa3HUad5F/MQkL/67Ttx5thKMbtQ/M2Cl7f8WXFXHQChHod2//9
I+Pz6TuHbLyaIVsr8a99Ahm1c/za2MIGYWVpC5bnkDA5R6v+5fwo2LH6JskR
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
BPB/UvPwrQ==
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 2.34},
  PlotRange->NCache[{{0, 0.4}, {
      Rational[7, 3], 3}}, {{0, 0.4}, {2.3333333333333335`, 3}}],
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.520187577974*^9, 3.520187590114625*^9}, 
   3.520188122145875*^9, 3.520188560224*^9, 3.52019129675525*^9, 
   3.520282758708375*^9, 3.520284004974*^9, 3.520286470849*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"x", "^", 
     RowBox[{"(", 
      RowBox[{"3", "/", "2"}], ")"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "2"}], "}"}]}], "]"}], "//", "N"}]], "Input",
 CellChangeTimes->{{3.520188370583375*^9, 3.5201883862865*^9}}],

Cell[BoxData["2.2627416997969525`"], "Output",
 CellChangeTimes->{{3.52018838300525*^9, 3.520188387224*^9}, 
   3.520188560599*^9, 3.520191297239625*^9, 3.520282759552125*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"x", "^", 
    RowBox[{"(", 
     RowBox[{"3", "/", "2"}], ")"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.52018863681775*^9, 3.52018863731775*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
FEVRCDbtc8svJMj/AZpDTCo=
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  ImageSize->{168.52714065867556`, Automatic},
  PlotRange->{{0, 2}, {0., 2.8284270381616867`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5201886399115*^9, 3.52019129725525*^9, 
  3.52028275963025*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ManyList", "[", 
  RowBox[{
   RowBox[{"x", "^", 
    RowBox[{"(", 
     RowBox[{"3", "/", "2"}], ")"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", "500", ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", ".2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2.2", ",", "2.32"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520188323645875*^9, 3.52018835719275*^9}, {
   3.520188400427125*^9, 3.52018840313025*^9}, {3.52018844088025*^9, 
   3.52018846781775*^9}, {3.52018851288025*^9, 3.520188523349*^9}, 
   3.520188607833375*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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

     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
VIh/YZ9cq4Dncyq8trXJq0D+H5cvkz4=
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
rtyEzNWrOHgvWTeL3CTZYferQRyqVovXk7n6FQuNhP6+5JH8al1+dSyavNVS
yFw9i4U4cP8J8k7dunzezljYdx2rInP1LRbVvdMekRXn+3++ox2LmAurPrDX
Y+tdDKZO+jFoGB3P6VhUfzUGMXOsjMhc/YvB0OpvU8nC8kG9HfwYmO5cvZTM
1cMY1LU6eZBN2+rmfTWIwbKyxkAyVx+jYbShL5l8Z8TEeN6daCTOr8onc/Uy
GpsbzC6SnYpPdD+NjGbyluU/ZK5+RkOrqK2N/Kii1D9jejT6rbP5yB5nt2gU
LLX+SZ2xXQjvu9L7KDTuaR1J5uprFHyG21qQr3W1qBqejILaNdiRuXobBfs/
Pi0llxRYdjz0iMKCZ26b1eX1NwruLyRi8qXHDiG/GEXBcaxzhLq8HkchxaE9
jVxrPXv7p9ZIjG81zVeX1+dIFESMO0tOEi6vn54TidJzL6rV5fU6Es7d7vfI
nw2Xbutyi8TWrJwOdXn9jsQtk6x37P1t4vl8GROJ5o51ihryeh6JTLMnauRn
WnXlLs8iMHKmib6GvL5H4ILnFHNy5VredqXCCGxpUpmmIa/3EXh8Nc+RPHX7
kumvBRFQWjjQWUNe/yMwZO/0zeRXQ987/mQbgcpLtnwN+XoQgbJb/YJYL+Ex
ewRCG/bHaMjXh3AoNyimk3cVGUeV3wxH3HXbXA35ehEOhZMzT5E96krbbdPC
YcIfeUFDvn6Eo/pbbTU5858PtX+5huOOtWO9hnw9CccxhYMPyVH694y3mofD
cFLtMw35+hKOvw7W9rDnaxSD9zUMg7QPfdeQrzdhcNiySFWTnt+JgLy0G2FQ
WtSorilff8KgmWo9irw5ZMR4vX1hKOwRjtWUr0dhSPk5ZhLZUeXxu/jfwzDl
rv80Tfn6FIba84725NJLq1w6poZBGPRukaZ8vQrDmpqA1eSk+ok8ncFhuGHd
5qYpX79C4SgYu52cIZlfadwSirIhC8Sa8vUsFBuPLQki243jnex/OhRGd6wi
NeXrWygkBt8SyBrF0erF0aE4OTovQ1O+3oWiZLVFNvnfFAnfcEMo/Jz3H9OU
r3+h+PfAq2Lyk0uZvs6WoRh2Sv+8pnw9DMV7VZsr5KZKj0FzB4ai29TqhqZ8
fZQiN3Z4PVlcjmlv26Tg5T65rylfL6Xw6ohvIZu+drBzuihF2zXD55ry9VOK
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
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
XQ2Je6omozH/eKKlWHxOZQlELxN97S/sgh3zaE2TQjt83lbtq6vD9uf7PfcY
4rfB6WblMjGSArfvnJLacVwGdWLg35N629DoLrBeokKGj7N6YQMBODQTxC5S
JdEP8Q8OuIc24JBB5tu3nzPn4HGhxmOcBR0K32b2yfzVCuLovGR8Ph4dFovj
0HZdhRM2b7dT11ZA+cYB41XZNhh8PXUvKImA7PPYGaQnFuFwmbSdfDkNilGJ
cJlnmIZfCr/PWbpsQav0OpU75g/ADpt52zIeWYzdzBRVGYfRtWdyrx8SkXBC
lErwo3kgbPbhb8nh0PXuleEv5yng0SNr+s2RgERnzU7nJnWDwI03xLxGPDJN
OrDt61kHls6CjSpeBDSXlnUz5vESJCxce7XXjQmFMs4yPrTrg5dSr6c/FWPz
+/rRba1D8/CDT2Bv+q1d+Nh/LSfPdAAmX4+oPPqI+QdR9d0AxiNXSie+Hqul
QwPyXTnXNrvhoV/UIQ4GHLJt5iWVbPdCyqVVsc8EAjJ1x53KxnzO/JG7GcWT
gK6uBU8lFk2BptIF//kFIjIVPi2VWboGUwFtWpKaK/BImv+yY3cPLAeYfNXF
nvdqdE3+fzpL8D3e9Q1v9QqMu9BkrWF8Z9xazsiUsgx/qEuRjM+okJO5O/79
+TKcw8mV3tvsBV78bReOCDyKOiA/zJyxCod3/36WD1uAte8vXnVPrkNDxESy
Iy8tilR/y62VOgoqzjULunzYPAkI55th+yX/ydxVsfIlKH7LJ09rkAtq1nue
bGD5G3nU8+vrxBB8Nx69tBfbj+KTZ7a4/EdBmUX3nzA2zzOG8o9EXaiglc/p
qVVIRNe2uCqO76zAnGhB7NmX9Gi0suAvOWwDBFoZ1Palk6HqQVRKhUYxeF9Z
c2U/T0DWTCqzrPHY9w38lrvcugymr4UTfn5vAQq/EZvBaTxK2DXJpdMYgTPn
BaSWsPno/tGe6mHQB8IRZTwXh/Eo0paB1fVoH0x/Et+n64FDUqxx7kWBs3Au
++WV7PNboBhpe62meQUmIzqziy4woT1nXvi2vh+ES673vmTX4NE+/RmXoaYZ
ECDSHuByJyIDHPP50NJ2oDBb9XSFYPzNneZzTpMK1hfdnok+x6Piw5OMfJ9X
gT4wqNvmNh6VcE0VLH1YhHUcSeJbNg0KE0p4rLFdDbV+T4IaxAloxvHGGJ/K
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
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 2.2},
  ImageSize->{362.39999999999407`, Automatic},
  PlotRange->{{0, 0.2}, {2.2, 2.32}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520188361552125*^9, 3.520188406177125*^9, {3.52018844375525*^9, 
   3.5201884571615*^9}, {3.520188516099*^9, 3.52018852450525*^9}, 
   3.52018856150525*^9, 3.52018861450525*^9, 3.52019131181775*^9, 
   3.520282769145875*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"1", "/", "x"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"1", "/", "2"}], ",", "2"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520188697802125*^9, 3.520188709927125*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwV1Hk4FHgcx/FxZJCKtNZSrlCmlqJcm+djkdjoTkJaTFGJSsqSlqiHStkk
ZbtsSmVSjhylC2uNJ0ubKKvtN+OaGdcwjplx/FZ/fJ/Pn9+/3i/j4MgtexQZ
DIb3zH3dG5siNRkMAkGg8RdKKfqUuz7VKBG8tvGbHyOlWFPhdyeVSVCTqNUk
EVO0Gbvbas8jYJco8kZ5FDqShQHmBgSsVbnapjUU6Zn1eV5rCELeaV8zT6U4
1WaGazEE2y4cSSr+hmIvu/2g9RCBTpJ1ZYT9NIKMjqcXjPGgPv/G1pSESYis
OE9aRHwEsKYy8zUnYP+Y83xVWwds5Vw1n3oZylvazrV/7kSX5avwfalS1G6+
s3NFUxfkyh7qzTHjUIm+1tfQ0o3WD6kRg/vHMFvVf3/Oxx7wFTo+pcWM4tZA
aZcRV4Bvw8ws7e+PgB3vbC5qEILrZDsQ1SpB+W42e/cbEWJUg4Q9JhK8K9ya
pv6kF675x5ZL4oehzzkUR4v68HDXBwPd1iGMyJaE3s7th91762TO2iHQQQ3d
cw8H8Od9u6glRWI0bn9RnJ8/iNzx0gPZLDGymMnmld5irGuqkIaHDiLQ/vX2
vxrFeH5ReX3i0QH0X+ImLfUcQvUzhef3bvYj882+ywVvhyDLmuPJre6D4f3I
7EbvYWSF2Qz8K+3FoXKXW+61w0iJFg7/vLYXbdc5Z/geEuil3fQvOC/C7PyO
8OYqCfR9+Q4fBUIYHk7wCHIcQU6K2oayjUJ4zS5R0a4cwUuTlYw9hQI4N5ZU
660eRSnnyFSMqQDeoV4h68pHMc/Fo+7hpR6sKfOUznUYw9MLvQc11XsgWbHg
/PLCMQx+6t62ML0bVSejFSNtxjGrafGHCK1u7By7c5z5aBzCNh033dtd+MfM
nu9oKsXNjqwtm1d3gW0RYpVxV4r2X3XSlWs78cLHP+5HAxkemW5Usw3uhJWv
6MGCHBm8MiUXLeQdCEtyb3XSl0PFcCy34HoHkveqyhUy5DhQVmq53q0DFYuC
qGjBBFrq7fS+9PDxdPqMEuvCBO56zF35+DIf9cWuojStSWRvSBSXOPHxxmhv
7flLk7j6Pa/Yr5eHhLLtOTz1Kbj8IZTq5/Dga9Ie6J82hRObpizdt/IwXmql
v4w5jfQrGVrTGjzEKAnfZp6cRnHGuyL7eoL5pg5BZgwKtUfaBnOSCaIifEbU
f6E4MSr+8rsbga4tu848jiI5NlSU7EpQOXX4uks8hd1pR70IFwKVtDS32ESK
JxYfhc7OBNn5NZeFMx39rWXkIfiBoEpgvboum4KhHCB3spn5FzLv2OlKisl7
FQqzTAjKWIt+ynlJgZRdD4aNCAKGWQYvXlO45h2OJoYE9xLda0dmOr14tSG2
chGB4+14HXYDhcbZVIdj3xEEf+4tdfmPYqlCVYJYk4B5V3Y2kFDEKzHDyUz3
nHDm7lg+xSs1z7imuQRjEybMom4Kkyt5swo1CM7q+e0wHqQodGNyo1QJrPih
y5yGKI4Ohr9nzzjS/CCa+kooPMuuKPioEBg4/JaXPk4RuEGPa69MUM24FceR
UbDle4JZMw6F1XE21k1QqMTvNFyoSKCR/mxx5xTFZm4/naNAULijbvyrWxbN
+spfHfsfpUh39g==
     "]]}},
  Axes->True,
  AxesOrigin->{0.5, 0.5},
  PlotRange->NCache[{{
      Rational[1, 2], 2}, {0.5000000076530614, 1.9999998775510281`}}, {{
     0.5, 2}, {0.5000000076530614, 1.9999998775510281`}}],
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5201887022865*^9, 3.52018871175525*^9}, 
   3.5201913119115*^9, 3.5202827692865*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"1", "/", "x"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"1", "/", "2"}], ",", "2"}], "}"}]}], "]"}], "//", 
  "N"}]], "Input",
 CellChangeTimes->{{3.52018872881775*^9, 3.520188736364625*^9}}],

Cell[BoxData["1.3862943611198906`"], "Output",
 CellChangeTimes->{3.520188737520875*^9, 3.520191312099*^9, 
  3.520282769458375*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ManyList", "[", 
  RowBox[{
   RowBox[{"1", "/", "x"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"1", "/", "2"}], ",", "2"}], "}"}], ",", "500", ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", ".4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1.3", ",", "1.45"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.520188773270875*^9, 3.520188794520875*^9}, {
   3.52028414225525*^9, 3.52028416156775*^9}, 3.520286752349*^9, {
   3.52028685613025*^9, 3.520286856489625*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
Hu2lF9UDCP8PAROnBQ==
     "]]}, 
   {RGBColor[0, 1, 0], PointBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[1, 0, 0], PointBox[CompressedData["
1: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
GPb32f7cDe81I+LI/wMdF+Il
     "]]}, 
   {RGBColor[0, 0, 1], PointBox[CompressedData["
1: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
RervDC4OMkjP3115jXj9HbmPXqlH6OgLPLZzaGsP3t+93S31keSb1c8M/5lO
+O8aoMwQv1Hx+0z/Tvy3QPDPTromG0bpHVcLo/Kh9DjYLYj4Qd2Ly4xKZg2G
d4QOJV9lQkmesTN04wDo/S8SfV7PoHxjjNNXr344OCz0OEB8+YJq8UYP4i+j
pwIN6KRPfoc/+PhucAQj7p8U+mnEPzf3O+g9rQe9Taj2liDJx7Q3HjxkvpJS
lhmeKmOhsGu1IrfZBA4Lvoh/eGwGm8Qm/PofjEJpcYRF/GMa4uZKfj363gXB
Re9+qMrQMe37U8Fkyyi0fnVxnXg+BbvakTCjsQl8XpE4a9jPAO+LAUH38V9Y
KfO3c0cGOf/k5yvvr6RBVjni7dGKaZhuT7H861GEKZNXMVL6TOgvr364+9Vj
FG/J5J8jvltnzvGHm+zrec4N1urEH/x4LbUvucUhu+R3/3s1JmR/3Bz046/F
PYc/awwDGCj9ECX452Ux+N6dOaX4gYGoNzUfqzRHkHmuV07MmZz3pXJX744f
8J12L3Yk++EnMPf7Z1cL9jjwrYvjIHy+NND2tFwNQk2OrjuoR/Jg8NH0irVt
GF7qdNSfPP6Sn9LnWfEDeD/Atea7Mh1yug7mpza04hM4W8LeM3FH+k5k6uUu
2Ah11aGV+C6XdiB/cxd2LRW56riBje9Sj59yqdFgdOoxy0r63+eJ7NA9dP4X
/KIdFy8k/i/LsXROOGwc13Yf57A6PwnzOjH+68droX3FXikonQGKU/UJ45FG
bH1s2wghFlIj1b8aWVJgmi8WE/p7Eu81tkm+6uxFYfW6/2RIPzm1XdKLEq1G
uNqCxGhvBox41uuFbmmEN0vX3+ki4WPt4IovykO4UVmy2cFkBjF3LU8Oytbh
w9UlxzOuMZCmKCO+N6wL29WnciRLpkDXOCVXPTKGQi7xkEOvmTB6jFc/eHtR
fLHHMoPwhYpSg1ecWSXemrMoQy+ZuDS7+5a8AQVS82dF1kaNQ89nocf0plHM
ac9ZXdnDgM2nYzV/Hn7B0U0KR2tFiJ9573fa2daHZcpj+XKdU5DR41+RuqUe
LyNNLS5x/vv7M4l8PgVhUN/xiZ9J7n+MxLvfXtVx8NbqKnVeS/rYLvZ84qsi
uBaIJ40qEL+ItepLsehA9ui0MeM2Awraf3foFQxhuERJymUNHaW8XDuT0Q89
DtP4i/9e3/54i/N/NVW4OP6u4+FN8vPNbLh7eU8nlu+ha641Jb4bXEnxvTOB
7XLq41vDWKhyqvsQvDAL7Xobgj6QedIUHHpUeXkMbCk3+V03p+GxQvzjTFgd
bI+bn1tBnr+Q6RukzP8HgaabpHlLGfBWTFM5kP0bms/LTcv//b3LZbJvOeZ7
cHWVbfDZKAYacdtZR5n4U9YnfaUvJB/3Rv6edm/HtUzeyr3Ed9Z03P6Z0zKO
7XZv8licLBh26HEsqunDmrcv5F0vsrDRJ+UVk3gM//ije7lZLAiI5WZ7rhvE
8bGNWgNhFLy02nxr0dMuFFOLdgpsI/sn4bVmLJaG39zS9wXlaejMXGweP9cL
IYdx0ayuaZzQcTog9bses9wNbXu0GIjJNayrHalGpH1u281Jsn9f5O5s/VEN
Aaf39SltdBjeE7Nh6nXi/n2d5z6//30emLFvzqdfcBqV4w9/SvavkeGl9zIc
d3ODbtiR++nFMPJNVqhB9ueiBbrhTOicoKSdZuVB9U2hrxUHE6M+GyyrU0bg
cs+Htes1ub6YVrPoq+W4YPUgoNyDAfaQiYZGUC1Wrfiuxe9Gzm/9B/vZhE6Y
XvnNG3OI9KNbooOW7TAUHufXZzqy4K0W8Dg1eBBRJuKufTVT4KmmXq307YBX
CU1qozDxWy5elyMvviLOqWc8R5DwF9duSb21eaBgb6ADOVd1PZ0kM/VhaLPE
GmpsWPC5+CElPq8Fo+66Cw9WMyFZE9cSyUv4+NChh7uUSR49Nrv67XUl1he4
vtxezIR30BOuXxF16IuTblrpTPb7nnXvfpUi3PWNSdl2hczD9uvGbWmZ4B/J
8Viyi8y35FG69YofELikptGw4t/rJf96Mg6OIP/Z0YonnpOo9+KNHDDrwUZb
Prf3anTohIjou/i1gv0uo/+aCRPfcs9ves9LRX74yPbitVz6YdYTwi5lSVim
si/qJUj+WC/7YlfWimfXtY4lX6FD8E/SfYljfTC6fu7VDeJD5i9uFazmLIeP
6qV1bg8YuHqb/3UN4fXsixen2HyziI/7xn1AaRQN7hsGWlOn8EL/xgZrcTo8
snw3Zi4cwzb1W+WHHnfBpMai23KWCh2Pdt4FEeUYZb48e4DOQM3fZ/5Kt8Yw
W5R/W2M/FUkL0kz3KwzDLWv5kWMyLPTyaWXv8R0nOfdE9FPVHObOunpXLh7G
0oWXGzvTWbDJltZKyk4CzyCjRYP8PHOPljYnVE2CmS793qGG8IhE67HHhC8s
TAJyzhNev+B39diirFqk2b48XPbv9QP3Q2ReP67HdQfO3mwbBnwm/hNZ/X0Q
vlFeoW/C6eAZOnTRxbwJ6jW1f3bksyDaJJ151GoQpy8HuWXET6J3RbhYhREV
U+Ph7z5oj8GG7Valz12KL2+yza0ekXkc6YgLMs/H7kv25QnXyP3s2KJqRc5P
wFGqOr2OhgSF2I0bzH7hqMfqJk8ekker9+adZvbidHBdgr8ImU8HTZYnTx8y
JE3MuSxoCKYfPOU8N4o79xQ15UKmYbH26CsZjx6UCfffFM2jg/cUJSp63TDy
jv957KfDgnKC0PYp5Ql4fjPqNJVnE544bvDs9Tg6rFQHNXZTISy8+9wWrW5o
igUlNVJYkOQ03VXaVouf+f5bRhqYMFli8HhBfwOi+6KDF1QwYCjo4PpTsQkB
rhxPo3+TXl8e7cBHfLphQ/uQZR8dUVX9Y1ShYeh7Lq37ys3E/zqvKRI=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["\"mesh\"", TraditionalForm], 
    FormBox["\"value\"", TraditionalForm]},
  AxesOrigin->{0, 1.3},
  PlotRange->{{0, 0.4}, {1.3, 1.45}},
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.520188799489625*^9, 3.520191317599*^9, 3.520282775208375*^9, {
   3.520284152708375*^9, 3.5202841699115*^9}, {3.5202868502865*^9, 
   3.520286864099*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowToolbars->"EditBar",
WindowSize->{1095, 905},
WindowMargins->{{178, Automatic}, {-24, Automatic}},
PrintingCopies->1,
PrintingPageRange->{Automatic, Automatic},
Magnification->1.25,
FrontEndVersion->"8.0 for Microsoft Windows (32-bit) (February 23, 2011)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "Default.nb"]], 
   Cell[
    StyleData["Subsection"]], 
   Cell[
    StyleData["Section"]]}, Visible -> False, FrontEndVersion -> 
  "8.0 for Microsoft Windows (32-bit) (February 23, 2011)", StyleDefinitions -> 
  "PrivateStylesheetFormatting.nb"]
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
Cell[1257, 32, 151, 2, 88, "Section"],
Cell[1411, 36, 3798, 89, 77, "Text",
 Evaluatable->False],
Cell[CellGroupData[{
Cell[5234, 129, 177, 2, 46, "Subsection"],
Cell[5414, 133, 692, 15, 77, "Text"],
Cell[6109, 150, 436, 10, 35, "Input"],
Cell[6548, 162, 3205, 78, 366, "Input"],
Cell[CellGroupData[{
Cell[9778, 244, 278, 8, 35, "Input"],
Cell[10059, 254, 6803, 118, 356, "Output"]
}, Open  ]],
Cell[16877, 375, 2301, 61, 292, "Input"],
Cell[19181, 438, 317, 8, 43, "Input"],
Cell[CellGroupData[{
Cell[19523, 450, 95, 1, 43, "Input"],
Cell[19621, 453, 2174, 41, 127, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21832, 499, 228, 5, 43, "Input"],
Cell[22063, 506, 694, 11, 43, "Output"]
}, Open  ]],
Cell[22772, 520, 1452, 38, 127, "Input"],
Cell[24227, 560, 315, 8, 43, "Input"],
Cell[CellGroupData[{
Cell[24567, 572, 95, 1, 43, "Input"],
Cell[24665, 575, 902, 17, 43, "Output"]
}, Open  ]],
Cell[25582, 595, 3113, 77, 402, "Input"],
Cell[28698, 674, 549, 10, 155, "Input"],
Cell[29250, 686, 809, 20, 72, "Input"],
Cell[CellGroupData[{
Cell[30084, 710, 259, 6, 43, "Input"],
Cell[30346, 718, 786, 13, 180, "Output"]
}, Open  ]],
Cell[31147, 734, 871, 23, 72, "Input"],
Cell[CellGroupData[{
Cell[32043, 761, 349, 10, 43, "Input"],
Cell[32395, 773, 1293, 21, 72, "Output"]
}, Open  ]],
Cell[33703, 797, 573, 12, 72, "Input"],
Cell[34279, 811, 417, 9, 43, "Input"],
Cell[34699, 822, 2484, 58, 485, "Input"],
Cell[CellGroupData[{
Cell[37208, 884, 329, 9, 43, "Input"],
Cell[37540, 895, 1191, 26, 72, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38768, 926, 504, 12, 43, "Input"],
Cell[39275, 940, 660, 18, 43, "Output"]
}, Open  ]],
Cell[39950, 961, 595, 13, 43, "Input"],
Cell[CellGroupData[{
Cell[40570, 978, 328, 9, 43, "Input"],
Cell[40901, 989, 712, 10, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[41650, 1004, 352, 10, 43, "Input"],
Cell[42005, 1016, 212, 3, 43, "Output"]
}, Open  ]],
Cell[42232, 1022, 3553, 84, 457, "Input"],
Cell[CellGroupData[{
Cell[45810, 1110, 860, 24, 100, "Input"],
Cell[46673, 1136, 11005, 218, 707, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57715, 1359, 417, 11, 72, "Input"],
Cell[58135, 1372, 7908, 137, 490, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[66092, 1515, 94, 1, 57, "Subsection"],
Cell[66189, 1518, 775, 19, 72, "Input"],
Cell[66967, 1539, 133, 2, 43, "Input"],
Cell[67103, 1543, 2579, 63, 182, "Input"],
Cell[CellGroupData[{
Cell[69707, 1610, 445, 9, 43, "Input"],
Cell[70155, 1621, 1717, 33, 72, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[71909, 1659, 1530, 34, 72, "Input"],
Cell[73442, 1695, 7656, 131, 726, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[81147, 1832, 105, 1, 57, "Subsection"],
Cell[81255, 1835, 303, 6, 43, "Input"],
Cell[81561, 1843, 141, 2, 43, "Input"],
Cell[81705, 1847, 1938, 54, 182, "Input"],
Cell[83646, 1903, 2475, 60, 210, "Input"],
Cell[CellGroupData[{
Cell[86146, 1967, 139, 4, 43, "Input"],
Cell[86288, 1973, 777, 12, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[87102, 1990, 497, 12, 72, "Input"],
Cell[87602, 2004, 1292, 24, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[88931, 2033, 331, 9, 43, "Input"],
Cell[89265, 2044, 971, 19, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90273, 2068, 1091, 23, 72, "Input"],
Cell[91367, 2093, 7784, 133, 726, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[99188, 2231, 416, 12, 43, "Input"],
Cell[99607, 2245, 7260, 126, 377, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[106904, 2376, 1653, 37, 100, "Input"],
Cell[108560, 2415, 9910, 169, 377, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[118507, 2589, 1183, 32, 100, "Input"],
Cell[119693, 2623, 5415, 95, 372, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[125145, 2723, 716, 17, 43, "Input"],
Cell[125864, 2742, 10840, 184, 726, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[136741, 2931, 1771, 44, 100, "Input"],
Cell[138515, 2977, 19403, 325, 360, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[157967, 3308, 116, 2, 57, "Subsection"],
Cell[158086, 3312, 863, 19, 127, "Input"],
Cell[158952, 3333, 1407, 31, 100, "Input"],
Cell[CellGroupData[{
Cell[160384, 3368, 340, 9, 43, "Input"],
Cell[160727, 3379, 830, 21, 66, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[161594, 3405, 980, 26, 72, "Input"],
Cell[162577, 3433, 4020, 71, 362, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[166634, 3509, 1413, 39, 100, "Input"],
Cell[168050, 3550, 18029, 303, 362, "Output"]
}, Open  ]],
Cell[186094, 3856, 950, 24, 100, "Input"],
Cell[CellGroupData[{
Cell[187069, 3884, 317, 8, 43, "Input"],
Cell[187389, 3894, 697, 19, 66, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[188123, 3918, 1345, 38, 100, "Input"],
Cell[189471, 3958, 8344, 144, 360, "Output"]
}, Open  ]],
Cell[197830, 4105, 880, 23, 100, "Input"],
Cell[CellGroupData[{
Cell[198735, 4132, 1996, 53, 155, "Input"],
Cell[200734, 4187, 28484, 476, 373, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[229255, 4668, 1527, 40, 127, "Input"],
Cell[230785, 4710, 8079, 143, 372, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[238901, 4858, 1631, 42, 127, "Input"],
Cell[240535, 4902, 31312, 524, 372, "Output"]
}, Open  ]],
Cell[271862, 5429, 1267, 30, 155, "Input"],
Cell[CellGroupData[{
Cell[273154, 5463, 230, 6, 43, "Input"],
Cell[273387, 5471, 201, 4, 66, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[273625, 5480, 620, 15, 43, "Input"],
Cell[274248, 5497, 52906, 877, 377, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[327191, 6379, 209, 6, 43, "Input"],
Cell[327403, 6387, 87, 2, 66, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[327527, 6394, 432, 12, 43, "Input"],
Cell[327962, 6408, 53386, 885, 375, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[381385, 7298, 313, 9, 43, "Input"],
Cell[381701, 7309, 175, 2, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[381913, 7316, 278, 8, 43, "Input"],
Cell[382194, 7326, 2760, 52, 378, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[384991, 7383, 584, 15, 43, "Input"],
Cell[385578, 7400, 66464, 1100, 375, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[452079, 8505, 255, 7, 43, "Input"],
Cell[452337, 8514, 2165, 42, 585, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[454539, 8561, 291, 9, 43, "Input"],
Cell[454833, 8572, 132, 2, 43, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[455002, 8579, 511, 13, 43, "Input"],
Cell[455516, 8594, 65631, 1086, 372, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature FxT1HToy7HXDXDKxMuUcyc6G *)
