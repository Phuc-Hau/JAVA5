

$('select[name="calc_shipping_provinces"]').each(function() {


  var $this = $(this),

    stc = ''

  c.forEach(function(i, e) {

    e += +1

    stc += '<option value=' + e + '>' + i + '</option>'

    $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
	var x = document.getElementById("address_1").value;
    if (address_1 = x) {
      $('select[name="calc_shipping_provinces"] option').each(function() {

        if ($(this).text() == address_1) {
			
            $(this).attr('selected', '')

        }

      })

      $('input.billing_address_1').attr('value', address_1)
      

    }

    $this.on('change', function(i) {

      i = $this.children('option:selected').index() - 1

      var str = '',

        r = $this.val()

      if (r != '') {

        arr[i].forEach(function(el) {

          str += '<option value="' + el + '">' + el + '</option>'

          $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)

        })

        var address_1 = $this.children('option:selected').text()

      	$('input.billing_address_1').attr('value', address_1)
       

        $('select[name="calc_shipping_district"]').on('change', function() {

	          var target = $(this).children('option:selected')
	
	          target.attr('selected', '')
	
	          $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')

          var address_2 = target.text()

          $('input.billing_address_2').attr('value', address_2)

          

        })

      } else {

        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')

      }

    })

  })
 		 
})



var y = document.getElementById("address_1").value;
var o = document.getElementById("provin").value-1;
if (address_2 = y) {
	$('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
	
	var str = ''
	
	arr[o].forEach(function(el) {

      str += '<option value="' + el + '">' + el + '</option>'

      $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)

    })

  $('select[name="calc_shipping_district"] option').each(function() {

    if ($(this).text() == address_2) {

      $(this).attr('selected', '')

    }

  })

  $('input.billing_address_2').attr('value', address_2)

}