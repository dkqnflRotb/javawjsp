<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"/>
  <script src="https://npmcdn.com/react@15.3.0/dist/react.min.js"></script>
  <script src="https://npmcdn.com/react-dom@15.3.0/dist/react-dom.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.14.1/moment-with-locales.min.js"></script>
  <style>
  	body {
		  font-family: "Roboto", sans-serif;
		  background-color: #f8f7fa;
		  color: #333;
		}
		
		.calendar {
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  margin-top: -225px;
		  margin-left: -195px;
		  width: 360px;
		  padding: 15px;
		  box-shadow: 1px 1px 20px 0 rgba(0, 0, 0, 0.4);
		  border-radius: 12px;
		  overflow: hidden;
		}
		.calendar--nav {
		  margin: -15px -15px 15px;
		  padding: 0 15px;
		  background-color: #b670f4;
		  color: #fff;
		  height: 70px;
		  position: relative;
		}
		.calendar--nav a {
		  position: absolute;
		  cursor: pointer;
		  left: 10px;
		  font-size: 32px;
		  line-height: 1;
		  top: 16px;
		  width: 30px;
		  text-align: center;
		  display: inline-block;
		  color: rgba(255, 255, 255, 0.4);
		  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
		}
		.calendar--nav a:hover {
		  color: #fff;
		}
		.calendar--nav a:last-child {
		  left: auto;
		  right: 10px;
		}
		.calendar--nav h1 {
		  margin: 0;
		  position: absolute;
		  left: 40px;
		  right: 40px;
		  text-align: center;
		  cursor: pointer;
		  font-weight: 400;
		  font-size: 30px;
		  line-height: 66px;
		  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
		}
		.calendar--nav small {
		  font-weight: 300;
		  font-size: 60%;
		}
		.calendar--days {
		  font-size: 0;
		}
		.calendar--days span {
		  width: 14.28571%;
		  display: inline-block;
		  text-align: center;
		  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
		  cursor: pointer;
		  margin: 8px 0;
		  line-height: 34px;
		  position: relative;
		  font-size: 16px;
		}
		.calendar--days span.label {
		  text-transform: uppercase;
		  font-weight: 700;
		  color: rgba(0, 0, 0, 0.3);
		  font-size: 14px;
		  cursor: initial;
		}
		.calendar--days span.active {
		  font-weight: 700;
		  background-color: rgba(182, 112, 244, 0.05);
		  border-radius: 12px;
		}
		.calendar--days span.muted {
		  color: rgba(0, 0, 0, 0.3);
		}
		.calendar--days span.between {
		  border-radius: 0;
		}
		.calendar--days span.start, .calendar--days span.between, .calendar--days span.end {
		  background-color: #b670f4;
		  color: #fff;
		}
		.calendar--days span.start {
		  border-radius: 12px 0 0 12px;
		}
		.calendar--days span.end {
		  border-radius: 0 12px 12px 0;
		}
		.calendar--days span.start.end {
		  border-radius: 12px;
		}
		.calendar--days span.between:nth-child(7n):after, .calendar--days span.start:nth-child(7n):after {
		  content: "";
		  position: absolute;
		  top: 0;
		  bottom: 0;
		  left: 100%;
		  background-color: #b670f4;
		  width: 20px;
		}
		.calendar--days span.between:nth-child(7n+1):after, .calendar--days span.end:nth-child(7n+1):after {
		  content: "";
		  position: absolute;
		  top: 0;
		  bottom: 0;
		  right: 100%;
		  background-color: #b670f4;
		  width: 20px;
		}
		.calendar--days span.start.end:after {
		  display: none;
		}
  </style>
  <script>
  'use strict';
  
	  const Heading = ({ date, changeMonth, resetDate }) => /*#__PURE__*/
	  React.createElement("nav", { className: "calendar--nav" }, /*#__PURE__*/
	  React.createElement("a", { onClick: () => changeMonth(date.month() - 1) }, "\u2039"), /*#__PURE__*/
	  React.createElement("h1", { onClick: () => resetDate() }, date.format('MMMM'), " ", /*#__PURE__*/React.createElement("small", null, date.format('YYYY'))), /*#__PURE__*/
	  React.createElement("a", { onClick: () => changeMonth(date.month() + 1) }, "\u203A"));
	
	
	
	  const Day = ({ currentDate, date, startDate, endDate, onClick }) => {
	    let className = [];
	
	    if (moment().isSame(date, 'day')) {
	      className.push('active');
	    }
	
	    if (date.isSame(startDate, 'day')) {
	      className.push('start');
	    }
	
	    if (date.isBetween(startDate, endDate, 'day')) {
	      className.push('between');
	    }
	
	    if (date.isSame(endDate, 'day')) {
	      className.push('end');
	    }
	
	    if (!date.isSame(currentDate, 'month')) {
	      className.push('muted');
	    }
	
	    return /*#__PURE__*/(
	      React.createElement("span", { onClick: () => onClick(date), currentDate: date, className: className.join(' ') }, date.date()));
	
	  };
	
	  const Days = ({ date, startDate, endDate, onClick }) => {
	    const thisDate = moment(date);
	    const daysInMonth = moment(date).daysInMonth();
	    const firstDayDate = moment(date).startOf('month');
	    const previousMonth = moment(date).subtract(1, 'month');
	    const previousMonthDays = previousMonth.daysInMonth();
	    const nextsMonth = moment(date).add(1, 'month');
	    let days = [];
	    let labels = [];
	
	    for (let i = 1; i <= 7; i++) {if (window.CP.shouldStopExecution(0)) break;
	      labels.push( /*#__PURE__*/React.createElement("span", { className: "label" }, moment().day(i).format('ddd')));
	    }window.CP.exitedLoop(0);
	
	    for (let i = firstDayDate.day(); i > 1; i--) {if (window.CP.shouldStopExecution(1)) break;
	      previousMonth.date(previousMonthDays - i + 2);
	
	      days.push( /*#__PURE__*/
	      React.createElement(Day, { key: moment(previousMonth).format('DD MM YYYY'), onClick: date => onClick(date), currentDate: date, date: moment(previousMonth), startDate: startDate, endDate: endDate }));
	
	    }window.CP.exitedLoop(1);
	
	    for (let i = 1; i <= daysInMonth; i++) {if (window.CP.shouldStopExecution(2)) break;
	      thisDate.date(i);
	
	      days.push( /*#__PURE__*/
	      React.createElement(Day, { key: moment(thisDate).format('DD MM YYYY'), onClick: date => onClick(date), currentDate: date, date: moment(thisDate), startDate: startDate, endDate: endDate }));
	
	    }window.CP.exitedLoop(2);
	
	    const daysCount = days.length;
	    for (let i = 1; i <= 42 - daysCount; i++) {if (window.CP.shouldStopExecution(3)) break;
	      nextsMonth.date(i);
	      days.push( /*#__PURE__*/
	      React.createElement(Day, { key: moment(nextsMonth).format('DD MM YYYY'), onClick: date => onClick(date), currentDate: date, date: moment(nextsMonth), startDate: startDate, endDate: endDate }));
	
	    }window.CP.exitedLoop(3);
	
	    return /*#__PURE__*/(
	      React.createElement("nav", { className: "calendar--days" },
	      labels.concat(),
	      days.concat()));
	
	
	  };
	
	  class Calendar extends React.Component {
	    constructor(props) {
	      super(props);
	
	      this.state = {
	        date: moment(),
	        startDate: moment().subtract(5, 'day'),
	        endDate: moment().add(3, 'day') };
	
	    }
	
	    resetDate() {
	      this.setState({
	        date: moment() });
	
	    }
	
	    changeMonth(month) {
	      const { date } = this.state;
	
	      date.month(month);
	
	      this.setState(
	      date);
	
	    }
	
	    changeDate(date) {
	      let { startDate, endDate } = this.state;
	
	      if (startDate === null || date.isBefore(startDate, 'day') || !startDate.isSame(endDate, 'day')) {
	        startDate = moment(date);
	        endDate = moment(date);
	      } else if (date.isSame(startDate, 'day') && date.isSame(endDate, 'day')) {
	        startDate = null;
	        endDate = null;
	      } else if (date.isAfter(startDate, 'day')) {
	        endDate = moment(date);
	      }
	
	      this.setState({
	        startDate,
	        endDate });
	
	    }
	
	    render() {
	      const { date, startDate, endDate } = this.state;
	
	      return /*#__PURE__*/(
	        React.createElement("div", { className: "calendar" }, /*#__PURE__*/
	        React.createElement(Heading, { date: date, changeMonth: month => this.changeMonth(month), resetDate: () => this.resetDate() }), /*#__PURE__*/
	
	        React.createElement(Days, { onClick: date => this.changeDate(date), date: date, startDate: startDate, endDate: endDate })));
	    }
	  }
	  ReactDOM.render( 
	  React.createElement(Calendar, null),
	  document.getElementById("calendar"));
  </script>
</head>
<body>
	<p><br/></p>
	<div id="wrap">
		<div class="container">
  		<div id="calendar" name="calendar" class="calendar"></div>
		</div>
	</div>
	<p><br/></p>
</body>
</html>