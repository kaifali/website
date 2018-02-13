let search = function(event) {
  var field, serviceName;
  event.preventDefault();
  field = document.getElementById('service-search-field');
  serviceName = field.value;
  window.location.href = "/services/" + serviceName;
};

export default search
