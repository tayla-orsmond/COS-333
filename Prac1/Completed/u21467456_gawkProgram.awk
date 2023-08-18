# u21467456
#!/usr/bin/gawk -f

# TO RUN
# awk -f u21467456_gawkProgram.awk

BEGIN {
    FS = "," # field separator

    # NF = number of fields
    # rowTotals [] - array of row totals
    # colTotals [] - array of column totals

    grandTotal = 0 # grand total for the matrix
    rows = 1 # rows for number of rows
    cols = 1  # cols for number of columns

    rowTotals[rows] = 0 # row totals array
    colTotals[cols] = 0 # column totals array

    while(getline < "input.txt"){
        for(i = 1; i <= NF; i++){
            if(NF > cols){
                cols = NF
            }
            rowTotals[rows] += $i
            colTotals[i] += $i
            grandTotal += $i
        }
        rows++
    }

    print "========================="
    print "Rectangular Matrix Totals"
    print "========================="

    print "Input File: Input.txt"

    # print row totals
    for(i = 1; i < rows; i++){
        print "Row " i " Total: " rowTotals[i]
    }

    # print column totals
    for(i = 1; i <= cols; i++){
        print "Column " i " Total: " colTotals[i]
    }

    # print grand total
    print "Total for entire matrix: " grandTotal   

    close("input.txt")
}