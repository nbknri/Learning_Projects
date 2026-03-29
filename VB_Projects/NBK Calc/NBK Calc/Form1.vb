Public Class Form1
    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

        On Error Resume Next

        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox2.Text = ""

        ElseIf TextBox1.Text >= 1000001 Then
            TextBox2.Text = ((Math.Ceiling(TextBox1.Text / 100)) * 100 - 1000000) * 8 / 100 + 98400
        ElseIf TextBox1.Text >= 50001 And TextBox1.Text <= 1000000 Then
            TextBox2.Text = ((Math.Ceiling(TextBox1.Text / 100)) * 100 - 50000) * 10 / 100 + 3400
        ElseIf TextBox1.Text >= 15001 And TextBox1.Text <= 50000 Then
            TextBox2.Text = ((Math.Ceiling(TextBox1.Text / 100)) * 100 - 15000) * 8 / 100 + 600
        ElseIf TextBox1.Text >= 100 And TextBox1.Text <= 15000 Then
            TextBox2.Text = (Math.Ceiling(TextBox1.Text / 100)) * 100 * 4 / 100

        Else
            TextBox2.Text = 4
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox3.Text = ""
        Else
            TextBox3.Text = Math.Ceiling(Val(TextBox2.Text) * 10 / 100)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox4.Text = ""
        Else
            TextBox4.Text = (Math.Ceiling(Val(TextBox2.Text) - TextBox3.Text))
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox5.Text = ""
        Else
            TextBox5.Text = (Math.Ceiling(TextBox1.Text / 100) * 100 * 1 / 100)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox6.Text = ""
        Else
            TextBox6.Text = Math.Ceiling(Val(TextBox5.Text) * 10 / 100)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox7.Text = ""
        Else
            TextBox7.Text = (Math.Ceiling(Val(TextBox5.Text) - TextBox6.Text))
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox8.Text = ""

        ElseIf TextBox1.Text >= 50001 Then
            TextBox8.Text = Math.Ceiling((((TextBox1.Text) - 50000) * 5 / 100 + 4900))
        ElseIf TextBox1.Text <= 50000 And TextBox1.Text >= 20001 Then
            TextBox8.Text = Math.Ceiling((((TextBox1.Text) - 20000) * 8 / 100 + 2500))
        ElseIf TextBox1.Text <= 20000 And TextBox1.Text >= 5001 Then
            TextBox8.Text = Math.Ceiling((((TextBox1.Text) - 5000) * 10 / 100 + 1000))
        ElseIf TextBox1.Text <= 5000 And TextBox1.Text >= 2500 Then
            TextBox8.Text = Math.Ceiling(((TextBox1.Text) * 20 / 100))

        Else
            TextBox8.Text = 500
        End If

        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox9.Text = ""
        Else
            TextBox9.Text = Math.Ceiling(Val(TextBox8.Text) / 2)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox10.Text = ""
        Else
            TextBox10.Text = Math.Ceiling(Val(TextBox8.Text) - TextBox9.Text)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox11.Text = ""
        Else
            TextBox11.Text = Math.Ceiling(Val(TextBox8.Text) / 3)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox12.Text = ""
        Else
            TextBox12.Text = Math.Ceiling(Val(TextBox11.Text) / 2)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox13.Text = ""
        Else
            TextBox13.Text = Math.Ceiling(Val(TextBox11.Text) - TextBox12.Text)
        End If


        If TextBox1.Text = "" Or TextBox1.Text <= 0 Then
            TextBox14.Text = ""
        Else
            TextBox14.Text = Math.Ceiling(Val(TextBox8.Text) + TextBox11.Text)
        End If

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        On Error Resume Next

        For Each Control As Control In TabPage1.Controls

            If TypeOf Control Is TextBox Then

                Control.Text = String.Empty

            End If
        Next

    End Sub

    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress

        On Error Resume Next

        If Char.IsLetter(e.KeyChar) Or Char.IsWhiteSpace(e.KeyChar) Or Char.IsSymbol(e.KeyChar) = True And e.KeyChar <> "?" AndAlso e.KeyChar <> "," Then
            e.Handled = True
        End If

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        On Error Resume Next
        TabControl1.SelectedIndex = 2
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        On Error Resume Next
        TabControl1.SelectedIndex = 1
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        On Error Resume Next
        TabControl1.SelectedIndex = 0
    End Sub


    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click

        On Error Resume Next

        For Each Control As Control In TabPage2.Controls

            If TypeOf Control Is TextBox Then

                Control.Text = String.Empty

            End If
        Next

        DateTimePicker1.Text = ""
        DateTimePicker2.Text = ""

        If TextBoxDay.Text = 1 Then
            TextBoxDay.Text = ""
        End If




    End Sub


    Private Sub TextBox16_TextChanged(sender As Object, e As EventArgs) Handles TextBox16.TextChanged


        On Error Resume Next

        TextBoxDay.Text = DateDiff(DateInterval.Day, DateTimePicker1.Value.Date, DateTimePicker2.Value.Date) + 1



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox15.Text = ""

        Else
            TextBox15.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text)

        End If



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox18.Text = ""

        Else
            TextBox18.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text + TextBox16.Text)

        End If



        If TextBox18.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox19.Text = ""
        ElseIf TextBox18.Text >= 1000001 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 1000000) * 8 / 100 + 98400
        ElseIf TextBox18.Text >= 50001 And TextBox18.Text <= 1000000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 50000) * 10 / 100 + 3400
        ElseIf TextBox18.Text >= 15001 And TextBox18.Text <= 50000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 15000) * 8 / 100 + 600
        ElseIf TextBox18.Text >= 100 And TextBox18.Text <= 15000 Then
            TextBox19.Text = (Math.Ceiling(TextBox18.Text / 100)) * 100 * 4 / 100

        Else
            TextBox19.Text = 4
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox20.Text = ""
        Else
            TextBox20.Text = Math.Ceiling(Val(TextBox19.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox21.Text = ""
        Else
            TextBox21.Text = (Math.Ceiling(Val(TextBox19.Text) - TextBox20.Text))
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox22.Text = ""
        Else
            TextBox22.Text = (Math.Ceiling(TextBox18.Text / 100) * 100 * 1 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox23.Text = ""
        Else
            TextBox23.Text = Math.Ceiling(Val(TextBox22.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox24.Text = ""
        Else
            TextBox24.Text = (Math.Ceiling(Val(TextBox22.Text) - TextBox23.Text))
        End If


    End Sub

    Private Sub TextBox17_TextChanged(sender As Object, e As EventArgs) Handles TextBox17.TextChanged

        On Error Resume Next

        TextBoxDay.Text = DateDiff(DateInterval.Day, DateTimePicker1.Value.Date, DateTimePicker2.Value.Date) + 1



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox15.Text = ""

        Else
            TextBox15.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text)

        End If



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox18.Text = ""

        Else
            TextBox18.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text + TextBox16.Text)

        End If



        If TextBox18.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox19.Text = ""
        ElseIf TextBox18.Text >= 1000001 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 1000000) * 8 / 100 + 98400
        ElseIf TextBox18.Text >= 50001 And TextBox18.Text <= 1000000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 50000) * 10 / 100 + 3400
        ElseIf TextBox18.Text >= 15001 And TextBox18.Text <= 50000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 15000) * 8 / 100 + 600
        ElseIf TextBox18.Text >= 100 And TextBox18.Text <= 15000 Then
            TextBox19.Text = (Math.Ceiling(TextBox18.Text / 100)) * 100 * 4 / 100

        Else
            TextBox19.Text = 4
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox20.Text = ""
        Else
            TextBox20.Text = Math.Ceiling(Val(TextBox19.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox21.Text = ""
        Else
            TextBox21.Text = (Math.Ceiling(Val(TextBox19.Text) - TextBox20.Text))
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox22.Text = ""
        Else
            TextBox22.Text = (Math.Ceiling(TextBox18.Text / 100) * 100 * 1 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox23.Text = ""
        Else
            TextBox23.Text = Math.Ceiling(Val(TextBox22.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox24.Text = ""
        Else
            TextBox24.Text = (Math.Ceiling(Val(TextBox22.Text) - TextBox23.Text))
        End If

        On Error Resume Next

        Dim Number15 As Double = TextBox15.Text
        Dim Number16 As Double = TextBox16.Text
        Dim Number18 As Double = TextBox18.Text
        Dim Number19 As Double = TextBox19.Text
        Dim Number20 As Double = TextBox20.Text
        Dim Number21 As Double = TextBox21.Text
        Dim Number22 As Double = TextBox22.Text
        Dim Number23 As Double = TextBox23.Text
        Dim Number24 As Double = TextBox24.Text


        TextBox15.Text = Number15.ToString("###,###,###,###")
        TextBox16.Text = Number16.ToString("###,###,###,###")
        TextBox18.Text = Number18.ToString("###,###,###,###")
        TextBox19.Text = Number19.ToString("###,###,###,###")
        TextBox20.Text = Number20.ToString("###,###,###,###")
        TextBox21.Text = Number21.ToString("###,###,###,###")
        TextBox22.Text = Number22.ToString("###,###,###,###")
        TextBox23.Text = Number23.ToString("###,###,###,###")
        TextBox24.Text = Number24.ToString("###,###,###,###")


    End Sub

    Private Sub DateTimePicker2_ValueChanged(sender As Object, e As EventArgs) Handles DateTimePicker2.ValueChanged

        On Error Resume Next

        TextBoxDay.Text = DateDiff(DateInterval.Day, DateTimePicker1.Value.Date, DateTimePicker2.Value.Date) + 1



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox15.Text = ""

        Else
            TextBox15.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text)

        End If



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox18.Text = ""

        Else
            TextBox18.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text + TextBox16.Text)

        End If



        If TextBox18.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox19.Text = ""
        ElseIf TextBox18.Text >= 1000001 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 1000000) * 8 / 100 + 98400
        ElseIf TextBox18.Text >= 50001 And TextBox18.Text <= 1000000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 50000) * 10 / 100 + 3400
        ElseIf TextBox18.Text >= 15001 And TextBox18.Text <= 50000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 15000) * 8 / 100 + 600
        ElseIf TextBox18.Text >= 100 And TextBox18.Text <= 15000 Then
            TextBox19.Text = (Math.Ceiling(TextBox18.Text / 100)) * 100 * 4 / 100

        Else
            TextBox19.Text = 4
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox20.Text = ""
        Else
            TextBox20.Text = Math.Ceiling(Val(TextBox19.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox21.Text = ""
        Else
            TextBox21.Text = (Math.Ceiling(Val(TextBox19.Text) - TextBox20.Text))
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox22.Text = ""
        Else
            TextBox22.Text = (Math.Ceiling(TextBox18.Text / 100) * 100 * 1 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox23.Text = ""
        Else
            TextBox23.Text = Math.Ceiling(Val(TextBox22.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox24.Text = ""
        Else
            TextBox24.Text = (Math.Ceiling(Val(TextBox22.Text) - TextBox23.Text))
        End If


        On Error Resume Next

        Dim Number15 As Double = TextBox15.Text
        Dim Number16 As Double = TextBox16.Text
        Dim Number18 As Double = TextBox18.Text
        Dim Number19 As Double = TextBox19.Text
        Dim Number20 As Double = TextBox20.Text
        Dim Number21 As Double = TextBox21.Text
        Dim Number22 As Double = TextBox22.Text
        Dim Number23 As Double = TextBox23.Text
        Dim Number24 As Double = TextBox24.Text

        TextBox15.Text = Number15.ToString("###,###,###,###")
        TextBox16.Text = Number16.ToString("###,###,###,###")
        TextBox18.Text = Number18.ToString("###,###,###,###")
        TextBox19.Text = Number19.ToString("###,###,###,###")
        TextBox20.Text = Number20.ToString("###,###,###,###")
        TextBox21.Text = Number21.ToString("###,###,###,###")
        TextBox22.Text = Number22.ToString("###,###,###,###")
        TextBox23.Text = Number23.ToString("###,###,###,###")
        TextBox24.Text = Number24.ToString("###,###,###,###")


    End Sub

    Private Sub DateTimePicker1_ValueChanged(sender As Object, e As EventArgs) Handles DateTimePicker1.ValueChanged

        On Error Resume Next

        TextBoxDay.Text = DateDiff(DateInterval.Day, DateTimePicker1.Value.Date, DateTimePicker2.Value.Date) + 1



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox15.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox15.Text = ""

        Else
            TextBox15.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text)

        End If



        If TextBox16.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBox17.Text = "" OrElse TextBox17.Text <= 0 Then
            TextBox18.Text = ""

        ElseIf TextBoxDay.Text = "" OrElse TextBoxDay.Text <= 0 Then
            TextBox18.Text = ""

        Else
            TextBox18.Text = Math.Round((TextBox16.Text * TextBox17.Text / 100 / 365) * TextBoxDay.Text + TextBox16.Text)

        End If



        If TextBox18.Text = "" OrElse TextBox16.Text <= 0 Then
            TextBox19.Text = ""
        ElseIf TextBox18.Text >= 1000001 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 1000000) * 8 / 100 + 98400
        ElseIf TextBox18.Text >= 50001 And TextBox18.Text <= 1000000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 50000) * 10 / 100 + 3400
        ElseIf TextBox18.Text >= 15001 And TextBox18.Text <= 50000 Then
            TextBox19.Text = ((Math.Ceiling(TextBox18.Text / 100)) * 100 - 15000) * 8 / 100 + 600
        ElseIf TextBox18.Text >= 100 And TextBox18.Text <= 15000 Then
            TextBox19.Text = (Math.Ceiling(TextBox18.Text / 100)) * 100 * 4 / 100

        Else
            TextBox19.Text = 4
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox20.Text = ""
        Else
            TextBox20.Text = Math.Ceiling(Val(TextBox19.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox21.Text = ""
        Else
            TextBox21.Text = (Math.Ceiling(Val(TextBox19.Text) - TextBox20.Text))
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox22.Text = ""
        Else
            TextBox22.Text = (Math.Ceiling(TextBox18.Text / 100) * 100 * 1 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox23.Text = ""
        Else
            TextBox23.Text = Math.Ceiling(Val(TextBox22.Text) * 10 / 100)
        End If


        If TextBox18.Text = "" OrElse TextBox18.Text <= 0 Then
            TextBox24.Text = ""
        Else
            TextBox24.Text = (Math.Ceiling(Val(TextBox22.Text) - TextBox23.Text))
        End If


        On Error Resume Next

        Dim Number15 As Double = TextBox15.Text
        Dim Number16 As Double = TextBox16.Text
        Dim Number18 As Double = TextBox18.Text
        Dim Number19 As Double = TextBox19.Text
        Dim Number20 As Double = TextBox20.Text
        Dim Number21 As Double = TextBox21.Text
        Dim Number22 As Double = TextBox22.Text
        Dim Number23 As Double = TextBox23.Text
        Dim Number24 As Double = TextBox24.Text

        TextBox15.Text = Number15.ToString("###,###,###,###")
        TextBox16.Text = Number16.ToString("###,###,###,###")
        TextBox18.Text = Number18.ToString("###,###,###,###")
        TextBox19.Text = Number19.ToString("###,###,###,###")
        TextBox20.Text = Number20.ToString("###,###,###,###")
        TextBox21.Text = Number21.ToString("###,###,###,###")
        TextBox22.Text = Number22.ToString("###,###,###,###")
        TextBox23.Text = Number23.ToString("###,###,###,###")
        TextBox24.Text = Number24.ToString("###,###,###,###")


    End Sub

    Private Sub TextBox25_TextChanged(sender As Object, e As EventArgs) Handles TextBox25.TextChanged

        On Error Resume Next

        If TextBox25.Modified AndAlso TextBox25.Text = "" Or TextBox25.Modified AndAlso TextBox25.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox25.Modified AndAlso TextBox27.Text = "" Or TextBox25.Modified AndAlso TextBox27.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox25.Modified AndAlso TextBox26.Text = "" Or TextBox25.Modified AndAlso TextBox26.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox25.Modified Then
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            Dim a As Integer = TextBox25.Text
            Dim b As Integer = TextBox26.Text
            Dim c As Integer = TextBox27.Text
            Dim s As Double = (a + b + c) / 2

            Dim findarea As Double = Math.Sqrt(s * (s - a) * (s - b) * (s - c))

            TextBox32.Text = findarea
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub TextBox26_TextChanged(sender As Object, e As EventArgs) Handles TextBox26.TextChanged

        On Error Resume Next

        If TextBox26.Modified AndAlso TextBox26.Text = "" Or TextBox26.Modified AndAlso TextBox26.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox26.Modified AndAlso TextBox27.Text = "" Or TextBox26.Modified AndAlso TextBox27.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox26.Modified AndAlso TextBox25.Text = "" Or TextBox26.Modified AndAlso TextBox25.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox26.Modified Then
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


            Dim a As Integer = TextBox25.Text
            Dim b As Integer = TextBox26.Text
            Dim c As Integer = TextBox27.Text
            Dim s As Double = (a + b + c) / 2

            Dim findarea As Double = Math.Sqrt(s * (s - a) * (s - b) * (s - c))

            TextBox32.Text = findarea
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104



        End If

    End Sub

    Private Sub TextBox27_TextChanged(sender As Object, e As EventArgs) Handles TextBox27.TextChanged

        On Error Resume Next

        If TextBox27.Modified AndAlso TextBox27.Text = "" Or TextBox27.Modified AndAlso TextBox27.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox27.Modified AndAlso TextBox26.Text = "" Or TextBox27.Modified AndAlso TextBox26.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox27.Modified AndAlso TextBox25.Text = "" Or TextBox27.Modified AndAlso TextBox25.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox27.Modified Then
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


            Dim a As Integer = TextBox25.Text
            Dim b As Integer = TextBox26.Text
            Dim c As Integer = TextBox27.Text
            Dim s As Double = (a + b + c) / 2

            Dim findarea As Double = Math.Sqrt(s * (s - a) * (s - b) * (s - c))

            TextBox32.Text = findarea
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104



        End If

    End Sub


    Private Sub TextBox28_TextChanged(sender As Object, e As EventArgs) Handles TextBox28.TextChanged

        On Error Resume Next

        If TextBox28.Modified AndAlso TextBox28.Text = "" Or TextBox28.Modified AndAlso TextBox28.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


        ElseIf TextBox28.Modified AndAlso TextBox29.Text = "" Or TextBox28.Modified AndAlso TextBox29.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox28.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


            TextBox32.Text = TextBox28.Text * TextBox29.Text / 40.47
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub TextBox29_TextChanged(sender As Object, e As EventArgs) Handles TextBox29.TextChanged

        On Error Resume Next

        If TextBox29.Modified AndAlso TextBox29.Text = "" Or TextBox29.Modified AndAlso TextBox29.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


        ElseIf TextBox29.Modified AndAlso TextBox28.Text = "" Or TextBox29.Modified AndAlso TextBox28.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

        ElseIf TextBox29.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""


            TextBox32.Text = TextBox28.Text * TextBox29.Text / 40.47
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub TextBox30_TextChanged(sender As Object, e As EventArgs) Handles TextBox30.TextChanged

        On Error Resume Next

        If TextBox30.Modified AndAlso TextBox30.Text = "" Or TextBox30.Modified AndAlso TextBox30.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""

        ElseIf TextBox30.Modified AndAlso TextBox31.Text = "" Or TextBox30.Modified AndAlso TextBox31.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""


        ElseIf TextBox30.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""


            TextBox32.Text = TextBox30.Text * TextBox31.Text / 12
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub TextBox31_TextChanged(sender As Object, e As EventArgs) Handles TextBox31.TextChanged

        On Error Resume Next

        If TextBox31.Modified AndAlso TextBox31.Text = "" Or TextBox31.Modified AndAlso TextBox31.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""

        ElseIf TextBox31.Modified AndAlso TextBox30.Text = "" Or TextBox31.Modified AndAlso TextBox30.Text <= 0 Then
            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""

        ElseIf TextBox31.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""


            TextBox32.Text = TextBox30.Text * TextBox31.Text / 12
            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click

        On Error Resume Next

        For Each Control As Control In TabPage3.Controls

            If TypeOf Control Is TextBox Then

                Control.Text = String.Empty

            End If
        Next

    End Sub

    Private Sub TextBox32_TextChanged(sender As Object, e As EventArgs) Handles TextBox32.TextChanged

        On Error Resume Next

        If TextBox32.Modified AndAlso TextBox32.Text = "" Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""



        ElseIf TextBox32.Modified AndAlso TextBox32.Text <= 0 Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox33.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""


        ElseIf TextBox32.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox33.Text = TextBox32.Text / 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104

        End If

    End Sub

    Private Sub TextBox33_TextChanged(sender As Object, e As EventArgs) Handles TextBox33.TextChanged

        On Error Resume Next
        If TextBox33.Modified AndAlso TextBox33.Text = "" Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""



        ElseIf TextBox33.Modified AndAlso TextBox33.Text <= 0 Then

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox34.Text = ""
            TextBox35.Text = ""


        ElseIf TextBox33.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = TextBox33.Text * 2.4711
            TextBox34.Text = TextBox33.Text * 0.01
            TextBox35.Text = TextBox34.Text * 107639.104
        End If

    End Sub

    Private Sub TextBox34_TextChanged(sender As Object, e As EventArgs) Handles TextBox34.TextChanged

        On Error Resume Next


        If TextBox34.Modified AndAlso TextBox34.Text = "" Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox35.Text = ""



        ElseIf TextBox34.Modified AndAlso TextBox34.Text <= 0 Then

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox35.Text = ""



        ElseIf TextBox34.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = TextBox34.Text / 0.01 * 2.4711
            TextBox33.Text = TextBox34.Text / 0.01
            TextBox35.Text = TextBox34.Text * 107639.104
        End If



    End Sub

    Private Sub TextBox35_TextChanged(sender As Object, e As EventArgs) Handles TextBox35.TextChanged

        On Error Resume Next


        If TextBox35.Modified AndAlso TextBox35.Text = "" Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""



        ElseIf TextBox35.Modified AndAlso TextBox35.Text <= 0 Then

            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = ""
            TextBox33.Text = ""
            TextBox34.Text = ""



        ElseIf TextBox35.Modified Then
            TextBox25.Text = ""
            TextBox26.Text = ""
            TextBox27.Text = ""
            TextBox28.Text = ""
            TextBox29.Text = ""
            TextBox30.Text = ""
            TextBox31.Text = ""

            TextBox32.Text = TextBox35.Text / 435.6
            TextBox33.Text = TextBox35.Text * 0.000929
            TextBox34.Text = TextBox35.Text / 107639.104
        End If

    End Sub

    Private Sub CommenKeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress, TextBox16.KeyPress, TextBox17.KeyPress, TextBox25.KeyPress, TextBox26.KeyPress, TextBox27.KeyPress, TextBox28.KeyPress, TextBox29.KeyPress, TextBox30.KeyPress, TextBox31.KeyPress, TextBox32.KeyPress, TextBox33.KeyPress, TextBox34.KeyPress, TextBox35.KeyPress

        If Not Char.IsControl(e.KeyChar) AndAlso Not Char.IsDigit(e.KeyChar) AndAlso e.KeyChar <> "."c Then
            e.Handled = True
        End If

        If e.KeyChar = "."c AndAlso DirectCast(sender, TextBox).Text.IndexOf(".") > -1 Then
            e.Handled = True
        End If

    End Sub



    Private Sub CommenKeyDown(ByVal sender As Object, ByVal e As KeyEventArgs) Handles TextBox1.KeyDown, TextBox2.KeyDown, TextBox3.KeyDown, TextBox4.KeyDown, TextBox5.KeyDown, TextBox6.KeyDown, TextBox7.KeyDown, TextBox8.KeyDown, TextBox9.KeyDown, TextBox10.KeyDown, TextBox11.KeyDown, TextBox12.KeyDown, TextBox13.KeyDown, TextBox14.KeyDown, TextBox16.KeyDown, TextBox17.KeyDown, TextBox18.KeyDown, TextBox15.KeyDown, TextBox19.KeyDown, TextBox20.KeyDown, TextBox21.KeyDown, TextBox22.KeyDown, TextBox23.KeyDown, TextBox24.KeyDown, TextBox25.KeyDown, TextBox26.KeyDown, TextBox27.KeyDown, TextBox28.KeyDown, TextBox29.KeyDown, TextBox30.KeyDown, TextBox31.KeyDown, TextBox32.KeyDown, TextBox33.KeyDown, TextBox34.KeyDown, TextBox35.KeyDown
        If e.KeyCode = Keys.Enter Then
            SendKeys.Send("{TAB}")
        End If
    End Sub

    Private Sub TextBox1_ModifiedChanged(sender As Object, e As EventArgs) Handles TextBox1.ModifiedChanged

    End Sub

    Private Sub TextBox1_Leave(sender As Object, e As EventArgs) Handles TextBox1.Leave

        On Error Resume Next

        Dim Number1 As Double = TextBox1.Text
        Dim Number2 As Double = TextBox2.Text
        Dim Number3 As Double = TextBox3.Text
        Dim Number4 As Double = TextBox4.Text
        Dim Number5 As Double = TextBox5.Text
        Dim Number6 As Double = TextBox6.Text
        Dim Number7 As Double = TextBox7.Text
        Dim Number8 As Double = TextBox8.Text
        Dim Number9 As Double = TextBox9.Text
        Dim Number10 As Double = TextBox10.Text
        Dim Number11 As Double = TextBox11.Text
        Dim Number12 As Double = TextBox12.Text
        Dim Number13 As Double = TextBox13.Text
        Dim Number14 As Double = TextBox14.Text


        TextBox1.Text = Number1.ToString("###,###,###,###")
        TextBox2.Text = Number2.ToString("###,###,###,###")
        TextBox3.Text = Number3.ToString("###,###,###,###")
        TextBox4.Text = Number4.ToString("###,###,###,###")
        TextBox5.Text = Number5.ToString("###,###,###,###")
        TextBox6.Text = Number6.ToString("###,###,###,###")
        TextBox7.Text = Number7.ToString("###,###,###,###")
        TextBox8.Text = Number8.ToString("###,###,###,###")
        TextBox9.Text = Number9.ToString("###,###,###,###")
        TextBox10.Text = Number10.ToString("###,###,###,###")
        TextBox11.Text = Number11.ToString("###,###,###,###")
        TextBox12.Text = Number12.ToString("###,###,###,###")
        TextBox13.Text = Number13.ToString("###,###,###,###")
        TextBox14.Text = Number14.ToString("###,###,###,###")


    End Sub

    Private Sub TextBox16_LostFocus(sender As Object, e As EventArgs) Handles TextBox16.LostFocus

        On Error Resume Next

        Dim Number15 As Double = TextBox15.Text
        Dim Number16 As Double = TextBox16.Text
        Dim Number18 As Double = TextBox18.Text
        Dim Number19 As Double = TextBox19.Text
        Dim Number20 As Double = TextBox20.Text
        Dim Number21 As Double = TextBox21.Text
        Dim Number22 As Double = TextBox22.Text
        Dim Number23 As Double = TextBox23.Text
        Dim Number24 As Double = TextBox24.Text


        TextBox15.Text = Number15.ToString("###,###,###,###")
        TextBox16.Text = Number16.ToString("###,###,###,###")
        TextBox18.Text = Number18.ToString("###,###,###,###")
        TextBox19.Text = Number19.ToString("###,###,###,###")
        TextBox20.Text = Number20.ToString("###,###,###,###")
        TextBox21.Text = Number21.ToString("###,###,###,###")
        TextBox22.Text = Number22.ToString("###,###,###,###")
        TextBox23.Text = Number23.ToString("###,###,###,###")
        TextBox24.Text = Number24.ToString("###,###,###,###")

    End Sub

    Private Sub TextBox36_TextChanged(sender As Object, e As EventArgs) Handles TextBox36.TextChanged

        If TextBox36.Text = "" OrElse TextBox36.Text <= 0 Then
            TextBox37.Text = ""

        Else
            TextBox37.Text = NumberInWords(Val(TextBox36.Text))
        End If
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click

        On Error Resume Next

        For Each Control As Control In TabPage4.Controls

            If TypeOf Control Is TextBox Then

                Control.Text = String.Empty

            End If
        Next

    End Sub

    Private Sub TextBox36_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox36.KeyPress

        If Not Char.IsControl(e.KeyChar) AndAlso Not Char.IsDigit(e.KeyChar) Then
            e.Handled = True
        End If

    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        On Error Resume Next
        TabControl1.SelectedIndex = 3

    End Sub
End Class
