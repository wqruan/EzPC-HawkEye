
                cmake_minimum_required (VERSION 3.0)
                project (BUILD_IT)
                find_package(SCI REQUIRED PATHS "../../SCI/build/install")
                add_executable(densemodel_SCI_OT.out ../densemodel_60_sci_OT0.cpp)
                target_link_libraries(densemodel_SCI_OT.out SCI::SCI-OT)
                add_executable(resmodel_SCI_OT.out ../resmodel_60_sci_OT0.cpp)
                target_link_libraries(resmodel_SCI_OT.out SCI::SCI-OT)
                add_executable(shufflemodel_SCI_OT.out ../shufflemodel_60_sci_OT0.cpp)
                target_link_libraries(shufflemodel_SCI_OT.out SCI::SCI-OT)
                add_executable(mobilemodel_SCI_OT.out ../mobilemodel_60_sci_OT0.cpp)
                target_link_libraries(mobilemodel_SCI_OT.out SCI::SCI-OT)
            