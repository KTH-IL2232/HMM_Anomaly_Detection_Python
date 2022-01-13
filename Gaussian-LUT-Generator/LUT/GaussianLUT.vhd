Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
library ieee_proposed;
use ieee_proposed.float_pkg.all;
ENTITY GaussianLUT IS
    PORT (
        x_in : IN numberType;
        y_out : OUT numberType
    );
END GaussianLUT;
ARCHITECTURE LUT of GaussianLUT is
BEGIN
    PROCESS (x_in) IS
    BEGIN
        CASE to_integer(unsigned(x_in)) IS
        WHEN 0 to 1006564084 => y_out <= x"3ecc422a";
        WHEN 1006564085 to 1014952692 => y_out <= x"3ecc4094";
        WHEN 1014952693 to 1019164215 => y_out <= x"3ecc3bd5";
        WHEN 1019164216 to 1023341300 => y_out <= x"3ecc33ec";
        WHEN 1023341301 to 1025464280 => y_out <= x"3ecc28d8";
        WHEN 1025464281 to 1027552823 => y_out <= x"3ecc1a9c";
        WHEN 1027552824 to 1029641366 => y_out <= x"3ecc0937";
        WHEN 1029641367 to 1031729908 => y_out <= x"3ecbf4ab";
        WHEN 1031729909 to 1032808617 => y_out <= x"3ecbdcf8";
        WHEN 1032808618 to 1033852888 => y_out <= x"3ecbc21f";
        WHEN 1033852889 to 1034897160 => y_out <= x"3ecba422";
        WHEN 1034897161 to 1035941431 => y_out <= x"3ecb8302";
        WHEN 1035941432 to 1036985702 => y_out <= x"3ecb5ec0";
        WHEN 1036985703 to 1038029974 => y_out <= x"3ecb375f";
        WHEN 1038029975 to 1039074245 => y_out <= x"3ecb0cdf";
        WHEN 1039074246 to 1040118516 => y_out <= x"3ecadf44";
        WHEN 1040118517 to 1040675089 => y_out <= x"3ecaae8f";
        WHEN 1040675090 to 1041197225 => y_out <= x"3eca7ac2";
        WHEN 1041197226 to 1041719361 => y_out <= x"3eca43e0";
        WHEN 1041719362 to 1042241496 => y_out <= x"3eca09ec";
        WHEN 1042241497 to 1042763632 => y_out <= x"3ec9cce7";
        WHEN 1042763633 to 1043285768 => y_out <= x"3ec98cd5";
        WHEN 1043285769 to 1043807903 => y_out <= x"3ec949b9";
        WHEN 1043807904 to 1044330039 => y_out <= x"3ec90396";
        WHEN 1044330040 to 1044852175 => y_out <= x"3ec8ba6e";
        WHEN 1044852176 to 1045374310 => y_out <= x"3ec86e47";
        WHEN 1045374311 to 1045896446 => y_out <= x"3ec81f22";
        WHEN 1045896447 to 1046418582 => y_out <= x"3ec7cd04";
        WHEN 1046418583 to 1046940717 => y_out <= x"3ec777f0";
        WHEN 1046940718 to 1047462853 => y_out <= x"3ec71fea";
        WHEN 1047462854 to 1047984989 => y_out <= x"3ec6c4f7";
        WHEN 1047984990 to 1048507124 => y_out <= x"3ec6671a";
        WHEN 1048507125 to 1048802629 => y_out <= x"3ec60658";
        WHEN 1048802630 to 1049063697 => y_out <= x"3ec5a2b4";
        WHEN 1049063698 to 1049324765 => y_out <= x"3ec53c35";
        WHEN 1049324766 to 1049585833 => y_out <= x"3ec4d2de";
        WHEN 1049585834 to 1049846901 => y_out <= x"3ec466b3";
        WHEN 1049846902 to 1050107969 => y_out <= x"3ec3f7bb";
        WHEN 1050107970 to 1050369036 => y_out <= x"3ec385fa";
        WHEN 1050369037 to 1050630104 => y_out <= x"3ec31175";
        WHEN 1050630105 to 1050891172 => y_out <= x"3ec29a31";
        WHEN 1050891173 to 1051152240 => y_out <= x"3ec22034";
        WHEN 1051152241 to 1051413308 => y_out <= x"3ec1a383";
        WHEN 1051413309 to 1051674376 => y_out <= x"3ec12424";
        WHEN 1051674377 to 1051935443 => y_out <= x"3ec0a21d";
        WHEN 1051935444 to 1052196511 => y_out <= x"3ec01d73";
        WHEN 1052196512 to 1052457579 => y_out <= x"3ebf962c";
        WHEN 1052457580 to 1052718647 => y_out <= x"3ebf0c4f";
        WHEN 1052718648 to 1052979715 => y_out <= x"3ebe7fe1";
        WHEN 1052979716 to 1053240783 => y_out <= x"3ebdf0e9";
        WHEN 1053240784 to 1053501850 => y_out <= x"3ebd5f6c";
        WHEN 1053501851 to 1053762918 => y_out <= x"3ebccb72";
        WHEN 1053762919 to 1054023986 => y_out <= x"3ebc3501";
        WHEN 1054023987 to 1054285054 => y_out <= x"3ebb9c20";
        WHEN 1054285055 to 1054546122 => y_out <= x"3ebb00d5";
        WHEN 1054546123 to 1054807190 => y_out <= x"3eba6327";
        WHEN 1054807191 to 1055068257 => y_out <= x"3eb9c31d";
        WHEN 1055068258 to 1055329325 => y_out <= x"3eb920be";
        WHEN 1055329326 to 1055590393 => y_out <= x"3eb87c10";
        WHEN 1055590394 to 1055851461 => y_out <= x"3eb7d51c";
        WHEN 1055851462 to 1056112529 => y_out <= x"3eb72be9";
        WHEN 1056112530 to 1056373597 => y_out <= x"3eb6807d";
        WHEN 1056373598 to 1056634664 => y_out <= x"3eb5d2e0";
        WHEN 1056634665 to 1056895732 => y_out <= x"3eb5231a";
        WHEN 1056895733 to 1057060704 => y_out <= x"3eb47132";
        WHEN 1057060705 to 1057191237 => y_out <= x"3eb3bd2f";
        WHEN 1057191238 to 1057321771 => y_out <= x"3eb3071a";
        WHEN 1057321772 to 1057452305 => y_out <= x"3eb24ef9";
        WHEN 1057452306 to 1057582839 => y_out <= x"3eb194d6";
        WHEN 1057582840 to 1057713373 => y_out <= x"3eb0d8b7";
        WHEN 1057713374 to 1057843907 => y_out <= x"3eb01aa5";
        WHEN 1057843908 to 1057974441 => y_out <= x"3eaf5aa8";
        WHEN 1057974442 to 1058104975 => y_out <= x"3eae98c7";
        WHEN 1058104976 to 1058235509 => y_out <= x"3eadd50b";
        WHEN 1058235510 to 1058366043 => y_out <= x"3ead0f7b";
        WHEN 1058366044 to 1058496577 => y_out <= x"3eac4821";
        WHEN 1058496578 to 1058627111 => y_out <= x"3eab7f04";
        WHEN 1058627112 to 1058757644 => y_out <= x"3eaab42d";
        WHEN 1058757645 to 1058888178 => y_out <= x"3ea9e7a3";
        WHEN 1058888179 to 1059018712 => y_out <= x"3ea9196f";
        WHEN 1059018713 to 1059149246 => y_out <= x"3ea8499b";
        WHEN 1059149247 to 1059279780 => y_out <= x"3ea7782d";
        WHEN 1059279781 to 1059410314 => y_out <= x"3ea6a52e";
        WHEN 1059410315 to 1059540848 => y_out <= x"3ea5d0a8";
        WHEN 1059540849 to 1059671382 => y_out <= x"3ea4faa2";
        WHEN 1059671383 to 1059801916 => y_out <= x"3ea42325";
        WHEN 1059801917 to 1059932450 => y_out <= x"3ea34a3a";
        WHEN 1059932451 to 1060062984 => y_out <= x"3ea26fe9";
        WHEN 1060062985 to 1060193517 => y_out <= x"3ea1943b";
        WHEN 1060193518 to 1060324051 => y_out <= x"3ea0b739";
        WHEN 1060324052 to 1060454585 => y_out <= x"3e9fd8ea";
        WHEN 1060454586 to 1060585119 => y_out <= x"3e9ef958";
        WHEN 1060585120 to 1060715653 => y_out <= x"3e9e188c";
        WHEN 1060715654 to 1060846187 => y_out <= x"3e9d368e";
        WHEN 1060846188 to 1060976721 => y_out <= x"3e9c5367";
        WHEN 1060976722 to 1061107255 => y_out <= x"3e9b6f1f";
        WHEN 1061107256 to 1061237789 => y_out <= x"3e9a89c0";
        WHEN 1061237790 to 1061368323 => y_out <= x"3e99a351";
        WHEN 1061368324 to 1061498857 => y_out <= x"3e98bbdd";
        WHEN 1061498858 to 1061629391 => y_out <= x"3e97d36a";
        WHEN 1061629392 to 1061759924 => y_out <= x"3e96ea03";
        WHEN 1061759925 to 1061890458 => y_out <= x"3e95ffaf";
        WHEN 1061890459 to 1062020992 => y_out <= x"3e951478";
        WHEN 1062020993 to 1062151526 => y_out <= x"3e942865";
        WHEN 1062151527 to 1062282060 => y_out <= x"3e933b81";
        WHEN 1062282061 to 1062412594 => y_out <= x"3e924dd3";
        WHEN 1062412595 to 1062543128 => y_out <= x"3e915f63";
        WHEN 1062543129 to 1062673662 => y_out <= x"3e90703b";
        WHEN 1062673663 to 1062804196 => y_out <= x"3e8f8064";
        WHEN 1062804197 to 1062934730 => y_out <= x"3e8e8fe5";
        WHEN 1062934731 to 1063065264 => y_out <= x"3e8d9ec7";
        WHEN 1063065265 to 1063195798 => y_out <= x"3e8cad13";
        WHEN 1063195799 to 1063326331 => y_out <= x"3e8bbad1";
        WHEN 1063326332 to 1063456865 => y_out <= x"3e8ac80a";
        WHEN 1063456866 to 1063587399 => y_out <= x"3e89d4c6";
        WHEN 1063587400 to 1063717933 => y_out <= x"3e88e10d";
        WHEN 1063717934 to 1063848467 => y_out <= x"3e87ece7";
        WHEN 1063848468 to 1063979001 => y_out <= x"3e86f85e";
        WHEN 1063979002 to 1064109535 => y_out <= x"3e860379";
        WHEN 1064109536 to 1064240069 => y_out <= x"3e850e41";
        WHEN 1064240070 to 1064370603 => y_out <= x"3e8418bd";
        WHEN 1064370604 to 1064501137 => y_out <= x"3e8322f6";
        WHEN 1064501138 to 1064631671 => y_out <= x"3e822cf3";
        WHEN 1064631672 to 1064762205 => y_out <= x"3e8136be";
        WHEN 1064762206 to 1064892738 => y_out <= x"3e80405d";
        WHEN 1064892739 to 1065023272 => y_out <= x"3e7e93b3";
        WHEN 1065023273 to 1065153806 => y_out <= x"3e7ca675";
        WHEN 1065153807 to 1065284340 => y_out <= x"3e7ab910";
        WHEN 1065284341 to 1065384045 => y_out <= x"3e78cb93";
        WHEN 1065384046 to 1065449312 => y_out <= x"3e76de0e";
        WHEN 1065449313 to 1065514578 => y_out <= x"3e74f090";
        WHEN 1065514579 to 1065579845 => y_out <= x"3e730329";
        WHEN 1065579846 to 1065645112 => y_out <= x"3e7115e7";
        WHEN 1065645113 to 1065710379 => y_out <= x"3e6f28d9";
        WHEN 1065710380 to 1065775646 => y_out <= x"3e6d3c0f";
        WHEN 1065775647 to 1065840913 => y_out <= x"3e6b4f97";
        WHEN 1065840914 to 1065906180 => y_out <= x"3e69637f";
        WHEN 1065906181 to 1065971447 => y_out <= x"3e6777d5";
        WHEN 1065971448 to 1066036714 => y_out <= x"3e658ca9";
        WHEN 1066036715 to 1066101981 => y_out <= x"3e63a208";
        WHEN 1066101982 to 1066167248 => y_out <= x"3e61b800";
        WHEN 1066167249 to 1066232515 => y_out <= x"3e5fce9f";
        WHEN 1066232516 to 1066297782 => y_out <= x"3e5de5f2";
        WHEN 1066297783 to 1066363049 => y_out <= x"3e5bfe08";
        WHEN 1066363050 to 1066428316 => y_out <= x"3e5a16ee";
        WHEN 1066428317 to 1066493583 => y_out <= x"3e5830b0";
        WHEN 1066493584 to 1066558850 => y_out <= x"3e564b5c";
        WHEN 1066558851 to 1066624117 => y_out <= x"3e5466ff";
        WHEN 1066624118 to 1066689384 => y_out <= x"3e5283a6";
        WHEN 1066689385 to 1066754651 => y_out <= x"3e50a15d";
        WHEN 1066754652 to 1066819918 => y_out <= x"3e4ec030";
        WHEN 1066819919 to 1066885185 => y_out <= x"3e4ce02d";
        WHEN 1066885186 to 1066950452 => y_out <= x"3e4b015e";
        WHEN 1066950453 to 1067015719 => y_out <= x"3e4923d1";
        WHEN 1067015720 to 1067080985 => y_out <= x"3e474790";
        WHEN 1067080986 to 1067146252 => y_out <= x"3e456ca8";
        WHEN 1067146253 to 1067211519 => y_out <= x"3e439324";
        WHEN 1067211520 to 1067276786 => y_out <= x"3e41bb0e";
        WHEN 1067276787 to 1067342053 => y_out <= x"3e3fe473";
        WHEN 1067342054 to 1067407320 => y_out <= x"3e3e0f5d";
        WHEN 1067407321 to 1067472587 => y_out <= x"3e3c3bd7";
        WHEN 1067472588 to 1067537854 => y_out <= x"3e3a69ec";
        WHEN 1067537855 to 1067603121 => y_out <= x"3e3899a5";
        WHEN 1067603122 to 1067668388 => y_out <= x"3e36cb0e";
        WHEN 1067668389 to 1067733655 => y_out <= x"3e34fe2f";
        WHEN 1067733656 to 1067798922 => y_out <= x"3e333314";
        WHEN 1067798923 to 1067864189 => y_out <= x"3e3169c5";
        WHEN 1067864190 to 1067929456 => y_out <= x"3e2fa24d";
        WHEN 1067929457 to 1067994723 => y_out <= x"3e2ddcb4";
        WHEN 1067994724 to 1068059990 => y_out <= x"3e2c1904";
        WHEN 1068059991 to 1068125257 => y_out <= x"3e2a5745";
        WHEN 1068125258 to 1068190524 => y_out <= x"3e289781";
        WHEN 1068190525 to 1068255791 => y_out <= x"3e26d9c0";
        WHEN 1068255792 to 1068321058 => y_out <= x"3e251e0b";
        WHEN 1068321059 to 1068386325 => y_out <= x"3e236469";
        WHEN 1068386326 to 1068451592 => y_out <= x"3e21ace3";
        WHEN 1068451593 to 1068516859 => y_out <= x"3e1ff781";
        WHEN 1068516860 to 1068582125 => y_out <= x"3e1e444a";
        WHEN 1068582126 to 1068647392 => y_out <= x"3e1c9346";
        WHEN 1068647393 to 1068712659 => y_out <= x"3e1ae47c";
        WHEN 1068712660 to 1068777926 => y_out <= x"3e1937f3";
        WHEN 1068777927 to 1068843193 => y_out <= x"3e178db3";
        WHEN 1068843194 to 1068908460 => y_out <= x"3e15e5c2";
        WHEN 1068908461 to 1068973727 => y_out <= x"3e144027";
        WHEN 1068973728 to 1069038994 => y_out <= x"3e129ce8";
        WHEN 1069038995 to 1069104261 => y_out <= x"3e10fc0b";
        WHEN 1069104262 to 1069169528 => y_out <= x"3e0f5d97";
        WHEN 1069169529 to 1069234795 => y_out <= x"3e0dc191";
        WHEN 1069234796 to 1069300062 => y_out <= x"3e0c27ff";
        WHEN 1069300063 to 1069365329 => y_out <= x"3e0a90e7";
        WHEN 1069365330 to 1069430596 => y_out <= x"3e08fc4e";
        WHEN 1069430597 to 1069495863 => y_out <= x"3e076a39";
        WHEN 1069495864 to 1069561130 => y_out <= x"3e05daad";
        WHEN 1069561131 to 1069626397 => y_out <= x"3e044daf";
        WHEN 1069626398 to 1069691664 => y_out <= x"3e02c344";
        WHEN 1069691665 to 1069756931 => y_out <= x"3e013b6f";
        WHEN 1069756932 to 1069822198 => y_out <= x"3dff6c6d";
        WHEN 1069822199 to 1069887465 => y_out <= x"3dfc673b";
        WHEN 1069887466 to 1069952732 => y_out <= x"3df96750";
        WHEN 1069952733 to 1070017999 => y_out <= x"3df66cb3";
        WHEN 1070018000 to 1070083266 => y_out <= x"3df3776d";
        WHEN 1070083267 to 1070148532 => y_out <= x"3df08783";
        WHEN 1070148533 to 1070213799 => y_out <= x"3ded9cfd";
        WHEN 1070213800 to 1070279066 => y_out <= x"3deab7e0";
        WHEN 1070279067 to 1070344333 => y_out <= x"3de7d833";
        WHEN 1070344334 to 1070409600 => y_out <= x"3de4fdfc";
        WHEN 1070409601 to 1070474867 => y_out <= x"3de2293f";
        WHEN 1070474868 to 1070540134 => y_out <= x"3ddf5a02";
        WHEN 1070540135 to 1070605401 => y_out <= x"3ddc9049";
        WHEN 1070605402 to 1070670668 => y_out <= x"3dd9cc19";
        WHEN 1070670669 to 1070735935 => y_out <= x"3dd70d75";
        WHEN 1070735936 to 1070801202 => y_out <= x"3dd45462";
        WHEN 1070801203 to 1070866469 => y_out <= x"3dd1a0e2";
        WHEN 1070866470 to 1070931736 => y_out <= x"3dcef2fa";
        WHEN 1070931737 to 1070997003 => y_out <= x"3dcc4aab";
        WHEN 1070997004 to 1071062270 => y_out <= x"3dc9a7f9";
        WHEN 1071062271 to 1071127537 => y_out <= x"3dc70ae6";
        WHEN 1071127538 to 1071192804 => y_out <= x"3dc47372";
        WHEN 1071192805 to 1071258071 => y_out <= x"3dc1e1a2";
        WHEN 1071258072 to 1071323338 => y_out <= x"3dbf5574";
        WHEN 1071323339 to 1071388605 => y_out <= x"3dbcceec";
        WHEN 1071388606 to 1071453872 => y_out <= x"3dba4e09";
        WHEN 1071453873 to 1071519139 => y_out <= x"3db7d2cc";
        WHEN 1071519140 to 1071584406 => y_out <= x"3db55d35";
        WHEN 1071584407 to 1071649673 => y_out <= x"3db2ed45";
        WHEN 1071649674 to 1071714939 => y_out <= x"3db082fb";
        WHEN 1071714940 to 1071780206 => y_out <= x"3dae1e57";
        WHEN 1071780207 to 1071845473 => y_out <= x"3dabbf58";
        WHEN 1071845474 to 1071910740 => y_out <= x"3da965fd";
        WHEN 1071910741 to 1071976007 => y_out <= x"3da71245";
        WHEN 1071976008 to 1072041274 => y_out <= x"3da4c42e";
        WHEN 1072041275 to 1072106541 => y_out <= x"3da27bb6";
        WHEN 1072106542 to 1072171808 => y_out <= x"3da038dc";
        WHEN 1072171809 to 1072237075 => y_out <= x"3d9dfb9e";
        WHEN 1072237076 to 1072302342 => y_out <= x"3d9bc3f8";
        WHEN 1072302343 to 1072367609 => y_out <= x"3d9991e9";
        WHEN 1072367610 to 1072432876 => y_out <= x"3d97656d";
        WHEN 1072432877 to 1072498143 => y_out <= x"3d953e82";
        WHEN 1072498144 to 1072563410 => y_out <= x"3d931d24";
        WHEN 1072563411 to 1072628677 => y_out <= x"3d91014f";
        WHEN 1072628678 to 1072693944 => y_out <= x"3d8eeb01";
        WHEN 1072693945 to 1072759211 => y_out <= x"3d8cda34";
        WHEN 1072759212 to 1072824478 => y_out <= x"3d8acee5";
        WHEN 1072824479 to 1072889745 => y_out <= x"3d88c910";
        WHEN 1072889746 to 1072955012 => y_out <= x"3d86c8af";
        WHEN 1072955013 to 1073020279 => y_out <= x"3d84cdbf";
        WHEN 1073020280 to 1073085546 => y_out <= x"3d82d83b";
        WHEN 1073085547 to 1073150813 => y_out <= x"3d80e81d";
        WHEN 1073150814 to 1073216079 => y_out <= x"3d7dfac2";
        WHEN 1073216080 to 1073281346 => y_out <= x"3d7a3001";
        WHEN 1073281347 to 1073346613 => y_out <= x"3d766fec";
        WHEN 1073346614 to 1073411880 => y_out <= x"3d72ba79";
        WHEN 1073411881 to 1073477147 => y_out <= x"3d6f0f9b";
        WHEN 1073477148 to 1073542414 => y_out <= x"3d6b6f47";
        WHEN 1073542415 to 1073607681 => y_out <= x"3d67d96f";
        WHEN 1073607682 to 1073672948 => y_out <= x"3d644e09";
        WHEN 1073672949 to 1073738215 => y_out <= x"3d60cd05";
        WHEN 1073738216 to 1073772653 => y_out <= x"3d5d5658";
        WHEN 1073772654 to 1073805286 => y_out <= x"3d59e9f4";
        WHEN 1073805287 to 1073837920 => y_out <= x"3d5687cb";
        WHEN 1073837921 to 1073870553 => y_out <= x"3d532fce";
        WHEN 1073870554 to 1073903186 => y_out <= x"3d4fe1f1";
        WHEN 1073903187 to 1073935820 => y_out <= x"3d4c9e23";
        WHEN 1073935821 to 1073968453 => y_out <= x"3d496457";
        WHEN 1073968454 to 1074001087 => y_out <= x"3d46347d";
        WHEN 1074001088 to 1074033720 => y_out <= x"3d430e87";
        WHEN 1074033721 to 1074066354 => y_out <= x"3d3ff264";
        WHEN 1074066355 to 1074098987 => y_out <= x"3d3ce006";
        WHEN 1074098988 to 1074131621 => y_out <= x"3d39d75b";
        WHEN 1074131622 to 1074164254 => y_out <= x"3d36d855";
        WHEN 1074164255 to 1074196888 => y_out <= x"3d33e2e3";
        WHEN 1074196889 to 1074229521 => y_out <= x"3d30f6f5";
        WHEN 1074229522 to 1074262155 => y_out <= x"3d2e147a";
        WHEN 1074262156 to 1074294788 => y_out <= x"3d2b3b61";
        WHEN 1074294789 to 1074327422 => y_out <= x"3d286b9a";
        WHEN 1074327423 to 1074360055 => y_out <= x"3d25a513";
        WHEN 1074360056 to 1074392689 => y_out <= x"3d22e7bc";
        WHEN 1074392690 to 1074425322 => y_out <= x"3d203382";
        WHEN 1074425323 to 1074457956 => y_out <= x"3d1d8855";
        WHEN 1074457957 to 1074490589 => y_out <= x"3d1ae622";
        WHEN 1074490590 to 1074523223 => y_out <= x"3d184cd9";
        WHEN 1074523224 to 1074555856 => y_out <= x"3d15bc67";
        WHEN 1074555857 to 1074588490 => y_out <= x"3d1334bb";
        WHEN 1074588491 to 1074621123 => y_out <= x"3d10b5c2";
        WHEN 1074621124 to 1074653756 => y_out <= x"3d0e3f6a";
        WHEN 1074653757 to 1074686390 => y_out <= x"3d0bd1a1";
        WHEN 1074686391 to 1074719023 => y_out <= x"3d096c55";
        WHEN 1074719024 to 1074751657 => y_out <= x"3d070f73";
        WHEN 1074751658 to 1074784290 => y_out <= x"3d04bae9";
        WHEN 1074784291 to 1074816924 => y_out <= x"3d026ea4";
        WHEN 1074816925 to 1074849557 => y_out <= x"3d002a92";
        WHEN 1074849558 to 1074882191 => y_out <= x"3cfbdd41";
        WHEN 1074882192 to 1074914824 => y_out <= x"3cf77578";
        WHEN 1074914825 to 1074947458 => y_out <= x"3cf31da5";
        WHEN 1074947459 to 1074980091 => y_out <= x"3ceed5a1";
        WHEN 1074980092 to 1075012725 => y_out <= x"3cea9d48";
        WHEN 1075012726 to 1075045358 => y_out <= x"3ce67474";
        WHEN 1075045359 to 1075077992 => y_out <= x"3ce25afe";
        WHEN 1075077993 to 1075110625 => y_out <= x"3cde50c1";
        WHEN 1075110626 to 1075509466 => y_out <= x"3cde50c1";
        WHEN others => y_out <= (others => '0');
        END CASE;
    END PROCESS;
END LUT;