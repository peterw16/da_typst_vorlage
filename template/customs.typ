// ******** Custom Elements ********

// A custom outline entry function that ommits filling dots ('.') for level 1 entries
#let outline_entry(it) = {

  // do nothing if target is not heading
  if it.element.func() != heading {
    return it
  }

  // determine numbering representation of headings
  let res = link(it.element.location(), 
    if it.element.numbering != none {
      let numberings = counter(heading).at(it.element.location())
      numbering(it.element.numbering, ..numberings)
    } + [ ] + it.element.body
  )

  // determine fillings
  if it.level > 1 and it.fill != none {
    res += [ ] + box(width: 1fr, it.fill) + [ ] 
  } else {
    res += h(1fr)
  }

  // add location link
  res += link(it.element.location(), it.page)
  res
}