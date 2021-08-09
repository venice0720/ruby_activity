# Polymorphism using Duck-Typing

class Reports
    def type(report)
        report.type
    end
end
class Daily
    def type
      puts "This is your daily report"
    end
end
class Monthly
    def type
      puts "This is your monthly report"
    end
end

class Yearly
    def type
        puts "This is your yearly report"
      end
  end

admin_report = Reports.new
daily = Daily.new
admin_report.type(daily)

admin_report = Reports.new
monthly = Monthly.new
admin_report.type(monthly)

admin_report = Reports.new
yearly = Yearly.new
admin_report.type(yearly)