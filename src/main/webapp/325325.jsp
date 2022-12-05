<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
  </script>
  <style>
		*,
		*::before,
		*::after {
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		}
		
		img {
		  width: 100%;
		  object-fit: cover;
		  padding: 0.35em;
		  border-radius: 0.6rem;
		  min-height: 10rem;
		}
		
		body {
		  background: linear-gradient(45deg, #f8e8b5, #e2c4ed);
		}
		
		.container {
		  display: flex;
		  justify-content: center;
		  max-width: clamp(30rem, 100% - 2rem, 60rem);
		  width: max(22.5rem, 100%);
		  min-height: 100vh;
		  margin-inline: auto;
		}
		
		.container__content--flow {
		  padding-block: 1rem;
		  display: flex;
		  flex-wrap: wrap;
		  gap: 1rem;
		}
		
		.container__content--flow > * {
		  flex-grow: 1;
		  margin: 0 auto;
		  flex-basis: calc((30rem - 100%) * 999);
		  min-width: 15rem;
		  max-width: calc(100% / 1.5);
		}
		
		.card {
		  display: flex;
		  flex-direction: column;
		  background-color: #fff;
		  border-radius: 0.5em;
		  box-shadow: 0 0.125em 0.25em #0004;
		  transition: all 400ms ease;
		  position: relative;
		}
		
		.card::before {
		  content: "";
		  /* position: absolute; */
		  inset: 0;
		  opacity: 0;
		  border-radius: inherit;
		  transition: opacity 300ms ease;
		  box-shadow: 0 0.125em 0.25em #0003, 0 0.65em 0.85em #0003, 0 0.96em 1.35em #0002;
		}
		
		.card:hover::before {
		  opacity: 1;
		}
		
		.card h2 {
		  padding-block: 1rem;
		  text-align: center;
		  color: #3871a0;
		  font-weight: bolder;
		  font-size: 1.37rem;
		}
		
		.card > p {
		  padding-block-end: 0.5rem;
		  margin-inline: 0.5em;
		  text-align: center;
		}
		
		.card:nth-child(odd) {
		  flex: 1 1 25%;
		}
		
		.container__content--flow:hover .card:not(:hover) {
		  background-color: #fff6;
		  box-shadow: none;
		  opacity: 0.8;
		}
		
		.card:hover {
		  scale: 1.05;
		}
		
		@media (max-width: 830px) {
		  .card:nth-child(odd) {
		    flex: 1 1;
		  }
		}
  </style>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>

		<div class="container container__content--flow">
		  <div class="card"><a href="http://192.168.50.145:9090/javawjsp/"><img src="https://picsum.photos/id/20/600/300" loading="lazy"/></a>
			    <h2>!!Card Title</h2>
			    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/40/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/60/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/80/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/100/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/120/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/140/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/160/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic,.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/180/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos sunt officiis ad repellendus pariatur.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/200/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos sunt.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/220/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos sunt officiis ad repellendus pariatur.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/240/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos sunt officiis ad repellendus pariatur.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/260/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur, quos sunt.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/280/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis unde minus error consectetur,.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/300/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/320/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/340/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic,.</p>
		  </div>
		  <div class="card"><img src="https://picsum.photos/id/360/600/300" loading="lazy"/>
		    <h2>Card Title</h2>
		    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum veritatis eaque necessitatibus, explicabo vero hic, perspiciatis.</p>
		  </div>
		</div>
		
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>