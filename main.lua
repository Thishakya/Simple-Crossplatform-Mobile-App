--[[

Student name :- Yasiru Thishakya Kulasinghe
Student ID :- 10567003
Assignment :- Introduction to mobile application development - Assignment 3

]]

--importing "widget" library for button programming
local widget = require( "widget" )

--initializing all variables
local pt_val
local ct_val
local br_val
local dr_val
local df_val
local bf_val

local pt_new
local ct_new

--"x" and "y" position of the text objects
curr_txt_pos_X = display.contentWidth/6
curr_txt_pos_Y = display.actualContentHeight/8

--"x" and "y" position of the text field objects
curr_input_Feild_X = 5*display.contentWidth/8
curr_input_Feild_Y = display.actualContentHeight/8

--"x" and "y" position of the text objects that shows the result
pt_display_pos_X = display.contentWidth/6 + 150
pt_display_pos_Y = display.actualContentHeight/8 - 100

ct_display_pos_X = display.contentWidth/6 + 150
ct_display_pos_Y = display.actualContentHeight/8 - 50

-- Results for p(t+1) is shown bythis code
local pt_new_input = display.newText( "p(t+1) : ", curr_txt_pos_X, pt_display_pos_Y, native.systemFont, 25 )
pt_new_input:setFillColor( 1, 0, 0 )

-- Results for c(t+1) is shown bythis code
local ct_new_input = display.newText( "c(t+1) : ", curr_txt_pos_X, ct_display_pos_Y, native.systemFont, 25 )
ct_new_input:setFillColor( 1, 0, 0 )


local pt_input = display.newText( "----------------------------------------------------------------" .. 
"----------------------------------------------------", curr_txt_pos_X, curr_txt_pos_Y-25, native.systemFont, 16 )
pt_input:setFillColor( 1, 0, 0 )

--Postions of text object and text field object for p(t) is programmed here
--p(t)
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local pt_input = display.newText( "p(t) : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
pt_input:setFillColor( 1, 0, 0 )

local pt = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
pt.inputType = "decimal"


--Postions of text object and text field object for c(t) is programmed here
--c(t)
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local ct_input = display.newText( "c(t) : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
ct_input:setFillColor( 1, 0, 0 )

local ct = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
ct.inputType = "decimal"


--Postions of text object and text field object for "br" is programmed here
--br
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local br_input = display.newText( "br : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
br_input:setFillColor( 1, 0, 0 )

local br = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
br.inputType = "decimal"


--Postions of text object and text field object for "dr" is programmed here
--dr
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local dr_input = display.newText( "dr : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
dr_input:setFillColor( 1, 0, 0 )

local dr = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
dr.inputType = "decimal"


--Postions of text object and text field object for "df" is programmed here
--df
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local df_nput = display.newText( "df : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
df_nput:setFillColor( 1, 0, 0 )

local df = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
df.inputType = "decimal"


--Postions of text object and text field object for "bf" is programmed here
--bf
curr_txt_pos_Y = curr_input_Feild_Y + 50
curr_input_Feild_Y = curr_input_Feild_Y + 50

local bf_input = display.newText( "bf : ", curr_txt_pos_X, curr_txt_pos_Y, native.systemFont, 16 )
bf_input:setFillColor( 1, 0, 0 )

local bf = native.newTextField( curr_input_Feild_X, curr_input_Feild_Y, 200, 36 )
bf.inputType = "decimal"

-----------------------------------------------------------------------------------

--Button programming

local pt_result
local ct_result

local function submitButtonTap(event)

    pt_val = tonumber(pt.text)
    ct_val = tonumber(ct.text)
    br_val = tonumber(br.text)
    dr_val = tonumber(dr.text)
    df_val = tonumber(df.text)
    bf_val = tonumber(bf.text)

    pt_new = pt_val + (br_val - pt_val) - (dr_val * pt_val - ct_val)
    ct_new = ct_val + (bf_val - dr_val - pt_val - ct_val) - (df_val - ct_val)

    pt_result = display.newText(pt_new, pt_display_pos_X, pt_display_pos_Y, native.systemFont, 36)
    ct_result = display.newText(ct_new, ct_display_pos_X, ct_display_pos_Y, native.systemFont, 36)

end
local button1 = widget.newButton(
    {
        label = "button",
        onEvent = submitButtonTap,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        width = 200,
        height = 40,
        cornerRadius = 2,
        fillColor = { default={0,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }
)

-- position of the button
button1.x = curr_input_Feild_X
button1.y = curr_input_Feild_Y+75

-- Change the button's label text
button1:setLabel( "Submit" )


