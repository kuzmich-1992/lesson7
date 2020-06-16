import $ from 'jquery'

$(document).ready(function() {
  $('adpost-edit-form').hide()

  $('#adposts button').on('click',function (event) {
  	event.preventDefault();
  	let $li = $(event.target.parentNode)
  	const adpost_id = $li.data('adpostId');
  	const url = '/adposts/' + user_id;
  	$ajax({
  	  method: "PATCH",
  	  url: url,
  	  datatype: 'json'
  	}).done(function(data){
  	  const title = data.title;
  	  const description = data.description;
  	  const company_name = data.company_name;
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-title").append(title)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-description").append(description)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-company_name").append(company_name)

  	})
  })
})