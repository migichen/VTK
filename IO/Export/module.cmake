vtk_module(vtkIOExport
  GROUPS
    StandAlone
  DEPENDS
    vtkCommonCore
    vtkRenderingAnnotation
    vtkRenderingContext2D
    vtkRenderingCore
    vtkRenderingFreeType
    vtkRenderingGL2PS
    vtkRenderingOpenGL
    vtkImagingCore
    vtkIOCore
  TEST_DEPENDS
    vtkCommonColor
    vtkChartsCore
    vtkInteractionImage
    vtkTestingRendering
    vtkInteractionStyle
    vtkRenderingAnnotation
    vtkRenderingFreeTypeOpenGL
    vtkRenderingVolumeOpenGL
    vtkViewsContext2D
  )
