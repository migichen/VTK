include(vtkQt)

set(LibSrcs
  vtkQtAnnotationView.cxx
  vtkQtListView.cxx
  vtkQtRecordView.cxx
  vtkQtTableRepresentation.cxx
  vtkQtTableView.cxx
  vtkQtTreeView.cxx
  vtkQtView.cxx
  )
set_source_files_properties(vtkQtView.cxx ABSTRACT)
set(MocHeaders
  vtkQtAnnotationView.h
  vtkQtListView.h
  vtkQtRecordView.h
  vtkQtTableView.h
  vtkQtTreeView.h
  vtkQtView.h
  )

if(VTK_QT_VERSION VERSION_GREATER "4")
  find_package(Qt5Widgets REQUIRED QUIET)
  include_directories(${Qt5Widgets_INCLUDE_DIRS})
  add_definitions(${Qt5Widgets_DEFINITIONS})

  qt5_wrap_cpp(LibMocSrcs ${MocHeaders})

  set(QT_LIBRARIES ${Qt5Widgets_LIBRARIES})
else()
  # import Qt4 build settings
  set(QT_USE_QTNETWORK 1)
  find_package(Qt4 REQUIRED QUIET)
  include(${QT_USE_FILE})

  qt4_wrap_cpp(LibMocSrcs ${MocHeaders})
endif()

set(${vtk-module}_NO_HeaderTest 1)
vtk_module_library(${vtk-module} ${LibSrcs} ${LibMocSrcs})

target_link_libraries(${vtk-module} ${QT_LIBRARIES})
