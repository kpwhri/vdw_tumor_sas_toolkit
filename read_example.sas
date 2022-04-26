
* Get the read/write macro;
%include "ReadWriteNAACCR_V18_XMLnames.sas";
* set the pointer files;
%include "filenames.sas";

* %ReadNAACCRv18(input_file,output_dset);

%macro no_comma(input_string);
    %sysfunc(tranword(&input_string.,',',' '));
%mend;

%macro upvars(input_dset);
    data &input_dset.;
        set &input_dset.;
        array _txt &keep_list.;
        array _len &keep_list_len.;
        do over _txt;
            _txt = strip(upcase(_txt));
            _len = length(_txt);
        end;
    run;
%mend;


%macro violinplot(input_dset,vardesc);
    * get a kernel density estimate;
    title "Plot of Character Length in  &vardesc. Registry";
    title2 "Univariate";
    proc univariate data = &input_dset.;
        var &keep_list_len.;
    run;

    proc kde data = &input_dset.;
        univar &keep_list_len. / out= &input_dset._kde plots=none;
    run;

    title2 'Overlay plot';
    proc sgplot data=&input_dset._kde;
      histogram value / group=var transparency=0.5;       /* SAS 9.4m2 */
      density value / type=kernel group=var; /* overlay density estimates */
    run;

    data &input_dset._kde;
        set &input_dset._kde ;
        mirror = -density;
    run;
    title2 'Violin plot';
    proc sgpanel data=&input_dset._kde nocycleattrs;
      panelby var / layout=columnlattice onepanel
        novarname noborder colheaderpos=bottom;
      band y=value upper=density lower=mirror / fill outline;
      rowaxis label='Character Length' grid;
      colaxis display=none;
    run;

    title;
%mend;


%let keep_list = textUsualOccupation textUsualIndustry;
%let keep_list_len = textUsualOccupation_l textUsualIndustry_l;



options orientation = landscape ;
ods graphics / height = 8in width = 10in imagemap = on ;

%let out_folder = %sysfunc(pathname(s)) ;

ods html5 path = "&out_folder" (URL=NONE)
                 body   = "read_example.html"
                 (title = "read_example output")
                 style = magnify
                 nogfootnote
                 device = svg
                 /* options(svg_mode = "embed") */
                    ;

* ods word file = "&out_folder.read_example.docx" ;





* int_reg;
%ReadNAACCRv18(int_reg, int_reg_d(keep=&keep_list));
%upvars(int_reg_d);
%violinplot(int_reg_d, Internal);


* seer_reg;
%ReadNAACCRv18(seer_reg, ext_reg_d(keep=&keep_list));
%upvars(ext_reg_d);
%violinplot(ext_reg_d, SEER);



ods _all_ close ;