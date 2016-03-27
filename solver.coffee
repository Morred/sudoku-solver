$ ->
  fields = []
  initialized = false
  table = $(".sudoku table")

  $('.reset').click ->
    console.log('reset grid!')

  $('.next-step').click ->
    console.log('next step!')
    if !initialized
      initializeFields()
      initialized = true
      console.log(fields)
      console.log("got them!")

  $('.solution').click ->
    console.log('full solution!')

  initializeFields = () ->
    table.find('tr').each ->
      row = $(this)
      fields.push([])
      row.find('td').each ->
        cell = this
        if cell.textContent
          fields[row.context.rowIndex].push(cell.textContent)
          $(cell).addClass('fixed-number')
        else
          fields[row.context.rowIndex].push(null)
      $('td').prop('contenteditable', false)
