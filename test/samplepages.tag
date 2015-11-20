home
  p hello I'm a Home Page

page4
  p Default Page

page1
  p hello I'm page 1
  p(if="{opts.params.name}") your name is {opts.params.name}

  script(type='text/coffeescript').
    @on 'mount',->
      window.mountcount++ if window.mountcount?
    @on 'unmount',->
      window.mountcount-- if window.mountcount?

page2
  p hello I'm Page 2

  routehandler

page2sub
  p I'm a subpage {opts.params.name}
  p Mmm {opts.test}

  script(type='text/coffeescript').
    @on 'mount',->
      window.submountcount++ if window.submountcount?
    @on 'unmount',->
      window.submountcount-- if window.submountcount?

page3sub 
  p hello I'm Page 3 sub

  script(type='text/coffeescript').
    @on 'mount',->
      window.submountcount++ if window.submountcount?
    @on 'unmount',->
      window.submountcount-- if window.submountcount?

  routehandler

page3subsub
  p hello I'm Page 3 subsub
  
  script(type='text/coffeescript').
    @on 'mount',->
      window.subsubmountcount++ if window.subsubmountcount?
    @on 'unmount',->
      window.subsubmountcount-- if window.subsubmountcount?




    
