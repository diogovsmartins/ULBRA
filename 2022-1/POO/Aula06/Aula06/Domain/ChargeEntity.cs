using System;

namespace Aula06.Domain
{
    public class ChargeEntity
    {
        private static int Charges = 1;
        private int ChargeID;
        private DateTime DateOfIssue;
        private DateTime DueDate;
        private DateTime PayDay;
        private double Value;

        public ChargeEntity()
        {
            SetValue();
            SetDateOfIssue();
            SetDueDate();
            ChargeID = Charges;
            Charges++;
        }

        public void SetValue()
        {
            Console.Write("Digite o valor da cobrança: ");
            Value = Convert.ToDouble(Console.ReadLine());
        }

        public void SetDateOfIssue()
        {
            DateOfIssue = DateTime.Now;
        }

        public void SetDueDate()
        {
            DueDate = DateTime.Now.AddDays(3);
        }

        public void SetPayDay(DateTime payDay)
        {
            PayDay = payDay;
        }

        public int GetChargeId()
        {
            return ChargeID;
        }

        public string ToString()
        {
            return "|---------------------------------------|" +
                   "\n|CHARGE ID: " + ChargeID +
                   "\n|---------------------------------------|" +
                   "\n|VALUE: " + Value +
                   "\n|---------------------------------------|" +
                   "\n|DATE OF ISSUE: " + DateOfIssue +
                   "\n|---------------------------------------|" +
                   "\n|DUE DATE: " + DueDate +
                   "\n|---------------------------------------|" +
                   "\n|PAY DAY: " + PayDay +
                   "\n|---------------------------------------|\n";
        }
    }
}