{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Meshing": "7.0",
            "FeatureExtraction": "1.1",
            "CameraInit": "9.0",
            "MeshFiltering": "3.0",
            "ImageMatching": "2.0",
            "StructureFromMotion": "2.0",
            "Texturing": "6.0",
            "FeatureMatching": "2.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "0e676c20622b1dc88f65a590c95d5db9433749d2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "56fa0679c9da28b29ad5765dde5d1a07af2edf1e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "depthMapsFolder": "",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 296,
                "split": 1
            },
            "uids": {
                "0": "5d8b55b5a744661dd6ec5e46ab90db0fc723f9bd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 296,
                "split": 8
            },
            "uids": {
                "0": "529f2c263c73a5a5037e6bf84b79ff582ad4969d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 296,
                "split": 1
            },
            "uids": {
                "0": "5a207bbfa21df3ef8a8b67c6be133281eade5fa0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 296,
                "split": 1
            },
            "uids": {
                "0": "c3557bbd29bf06626553153fe8c1f7ef2e2b7187"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 5155191,
                        "poseId": 5155191,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-236.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 17891654,
                        "poseId": 17891654,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-388.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 21003627,
                        "poseId": 21003627,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-211.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 26069867,
                        "poseId": 26069867,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-251.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 44509341,
                        "poseId": 44509341,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-458.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 52560850,
                        "poseId": 52560850,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-021.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 58715920,
                        "poseId": 58715920,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-228.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 67557399,
                        "poseId": 67557399,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-191.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 68583587,
                        "poseId": 68583587,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-281.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 69498185,
                        "poseId": 69498185,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-141.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 71325555,
                        "poseId": 71325555,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-341.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 74498052,
                        "poseId": 74498052,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-306.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 94578966,
                        "poseId": 94578966,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-013.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 103141981,
                        "poseId": 103141981,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-116.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 106538177,
                        "poseId": 106538177,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-181.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 108247431,
                        "poseId": 108247431,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-208.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 110078555,
                        "poseId": 110078555,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-206.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 116074560,
                        "poseId": 116074560,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-098.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 131706787,
                        "poseId": 131706787,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-116.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 132513141,
                        "poseId": 132513141,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-156.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 134984082,
                        "poseId": 134984082,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-011.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 135264630,
                        "poseId": 135264630,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-056.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 136399065,
                        "poseId": 136399065,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-066.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 141451205,
                        "poseId": 141451205,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-136.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 153411840,
                        "poseId": 153411840,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-006.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 156374775,
                        "poseId": 156374775,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-408.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 164849370,
                        "poseId": 164849370,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-041.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 168232932,
                        "poseId": 168232932,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-258.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 169749156,
                        "poseId": 169749156,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-461.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 172670229,
                        "poseId": 172670229,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-376.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 179091913,
                        "poseId": 179091913,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-266.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 187459680,
                        "poseId": 187459680,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-428.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 187587042,
                        "poseId": 187587042,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-506.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 189982562,
                        "poseId": 189982562,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-466.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 205165619,
                        "poseId": 205165619,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-038.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 206223629,
                        "poseId": 206223629,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-481.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 218643498,
                        "poseId": 218643498,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-326.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 219660761,
                        "poseId": 219660761,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-353.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 226151405,
                        "poseId": 226151405,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-006.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 226536560,
                        "poseId": 226536560,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-091.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 226710719,
                        "poseId": 226710719,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-451.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 232231739,
                        "poseId": 232231739,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-158.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 258134964,
                        "poseId": 258134964,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-036.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 277819306,
                        "poseId": 277819306,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-451.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 281797408,
                        "poseId": 281797408,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-218.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 288576490,
                        "poseId": 288576490,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-223.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 292913766,
                        "poseId": 292913766,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-156.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 304700679,
                        "poseId": 304700679,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-308.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 310552913,
                        "poseId": 310552913,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-253.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 313807277,
                        "poseId": 313807277,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-381.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 317134610,
                        "poseId": 317134610,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-046.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 317570499,
                        "poseId": 317570499,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-141.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 318404549,
                        "poseId": 318404549,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-026.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 323259016,
                        "poseId": 323259016,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-193.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 338380079,
                        "poseId": 338380079,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-406.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 349363571,
                        "poseId": 349363571,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-196.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 352939689,
                        "poseId": 352939689,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-363.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 359404574,
                        "poseId": 359404574,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-171.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 360088861,
                        "poseId": 360088861,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-231.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 370507128,
                        "poseId": 370507128,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-373.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 371417403,
                        "poseId": 371417403,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-131.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 384773666,
                        "poseId": 384773666,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-108.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 386789338,
                        "poseId": 386789338,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-441.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 387628555,
                        "poseId": 387628555,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-401.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 390804837,
                        "poseId": 390804837,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-313.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 398346072,
                        "poseId": 398346072,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-138.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 399950039,
                        "poseId": 399950039,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-501.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 402962057,
                        "poseId": 402962057,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-183.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 404085961,
                        "poseId": 404085961,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-151.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 404091459,
                        "poseId": 404091459,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-446.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 414311451,
                        "poseId": 414311451,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-061.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 418089417,
                        "poseId": 418089417,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-211.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 427599571,
                        "poseId": 427599571,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-446.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 438959704,
                        "poseId": 438959704,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-376.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 440887332,
                        "poseId": 440887332,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-216.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 451225070,
                        "poseId": 451225070,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-391.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 458276505,
                        "poseId": 458276505,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-361.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 479982268,
                        "poseId": 479982268,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-016.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 482049189,
                        "poseId": 482049189,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-416.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 496162878,
                        "poseId": 496162878,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-443.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 500713475,
                        "poseId": 500713475,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-003.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 506374658,
                        "poseId": 506374658,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-071.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 513991316,
                        "poseId": 513991316,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-081.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 516436829,
                        "poseId": 516436829,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-526.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 517526025,
                        "poseId": 517526025,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-166.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 521307706,
                        "poseId": 521307706,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-106.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 525224711,
                        "poseId": 525224711,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-433.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 534473595,
                        "poseId": 534473595,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-331.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 544345237,
                        "poseId": 544345237,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-023.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 555932269,
                        "poseId": 555932269,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-096.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 611443496,
                        "poseId": 611443496,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-188.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 614726097,
                        "poseId": 614726097,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-441.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 616548149,
                        "poseId": 616548149,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-233.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 622659808,
                        "poseId": 622659808,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-186.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 622991964,
                        "poseId": 622991964,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-316.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 624144706,
                        "poseId": 624144706,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-431.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 625711331,
                        "poseId": 625711331,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-221.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 637619378,
                        "poseId": 637619378,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-251.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 638755066,
                        "poseId": 638755066,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-466.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 643561559,
                        "poseId": 643561559,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-476.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 649904254,
                        "poseId": 649904254,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-203.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 665662393,
                        "poseId": 665662393,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-111.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 676173665,
                        "poseId": 676173665,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-346.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 694467411,
                        "poseId": 694467411,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-026.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 695569182,
                        "poseId": 695569182,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-133.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 703080265,
                        "poseId": 703080265,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-151.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 705743024,
                        "poseId": 705743024,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-521.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 707113834,
                        "poseId": 707113834,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-166.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 724110385,
                        "poseId": 724110385,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-236.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 724556053,
                        "poseId": 724556053,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-178.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 731830279,
                        "poseId": 731830279,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-036.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 733431843,
                        "poseId": 733431843,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-416.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 761324098,
                        "poseId": 761324098,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-076.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 772773676,
                        "poseId": 772773676,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-148.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 790398598,
                        "poseId": 790398598,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-198.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 799426736,
                        "poseId": 799426736,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-448.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 804224767,
                        "poseId": 804224767,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-161.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 805111078,
                        "poseId": 805111078,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-291.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 806411313,
                        "poseId": 806411313,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-176.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 813392708,
                        "poseId": 813392708,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-491.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 818525254,
                        "poseId": 818525254,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-088.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 828247145,
                        "poseId": 828247145,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-456.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 875003471,
                        "poseId": 875003471,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-048.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 885449144,
                        "poseId": 885449144,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-243.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 891241587,
                        "poseId": 891241587,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-001.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 899425054,
                        "poseId": 899425054,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-051.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 904166629,
                        "poseId": 904166629,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-426.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 908375365,
                        "poseId": 908375365,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-256.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 923067242,
                        "poseId": 923067242,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-286.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 941062313,
                        "poseId": 941062313,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-128.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 945707220,
                        "poseId": 945707220,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-381.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 949128505,
                        "poseId": 949128505,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-401.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 963817135,
                        "poseId": 963817135,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-461.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 963919561,
                        "poseId": 963919561,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-143.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 977316662,
                        "poseId": 977316662,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-146.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 980361952,
                        "poseId": 980361952,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-033.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 985049603,
                        "poseId": 985049603,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-371.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1007523778,
                        "poseId": 1007523778,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-021.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1010379207,
                        "poseId": 1010379207,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-101.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1012472736,
                        "poseId": 1012472736,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-146.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1024842777,
                        "poseId": 1024842777,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-226.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1029649166,
                        "poseId": 1029649166,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-016.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1035019209,
                        "poseId": 1035019209,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-078.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1041234119,
                        "poseId": 1041234119,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-246.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1044868266,
                        "poseId": 1044868266,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-131.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1048178392,
                        "poseId": 1048178392,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-351.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1054349193,
                        "poseId": 1054349193,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-321.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1055356805,
                        "poseId": 1055356805,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-383.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1055867003,
                        "poseId": 1055867003,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-081.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1059958969,
                        "poseId": 1059958969,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-091.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1071640498,
                        "poseId": 1071640498,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-403.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1074467531,
                        "poseId": 1074467531,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-436.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1078846552,
                        "poseId": 1078846552,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-171.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1095823764,
                        "poseId": 1095823764,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-396.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1097823166,
                        "poseId": 1097823166,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-366.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1100617028,
                        "poseId": 1100617028,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-186.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1106438429,
                        "poseId": 1106438429,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-041.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1116058402,
                        "poseId": 1116058402,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-421.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1116742911,
                        "poseId": 1116742911,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-238.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1129864769,
                        "poseId": 1129864769,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-001.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1144368604,
                        "poseId": 1144368604,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-411.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1149465354,
                        "poseId": 1149465354,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-268.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1158187247,
                        "poseId": 1158187247,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-176.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1173229930,
                        "poseId": 1173229930,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-061.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1176734937,
                        "poseId": 1176734937,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-423.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1177810273,
                        "poseId": 1177810273,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-371.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1180392628,
                        "poseId": 1180392628,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-311.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1182816474,
                        "poseId": 1182816474,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-201.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1188708483,
                        "poseId": 1188708483,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-103.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1189717238,
                        "poseId": 1189717238,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-326.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1194041846,
                        "poseId": 1194041846,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-336.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1209943857,
                        "poseId": 1209943857,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-046.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1216037922,
                        "poseId": 1216037922,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-053.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1228276541,
                        "poseId": 1228276541,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-303.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1229339527,
                        "poseId": 1229339527,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-396.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1233968687,
                        "poseId": 1233968687,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-536.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1238138465,
                        "poseId": 1238138465,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-221.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1242033849,
                        "poseId": 1242033849,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-018.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1249792969,
                        "poseId": 1249792969,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-126.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1255450248,
                        "poseId": 1255450248,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-361.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1270705093,
                        "poseId": 1270705093,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-291.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1276042626,
                        "poseId": 1276042626,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-256.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1276707013,
                        "poseId": 1276707013,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-333.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1301707614,
                        "poseId": 1301707614,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-286.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1313650535,
                        "poseId": 1313650535,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-406.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1335645865,
                        "poseId": 1335645865,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-356.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1337149777,
                        "poseId": 1337149777,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-393.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1346757161,
                        "poseId": 1346757161,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-056.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1347214706,
                        "poseId": 1347214706,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-213.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1350503962,
                        "poseId": 1350503962,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-028.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1350675192,
                        "poseId": 1350675192,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-136.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1356866404,
                        "poseId": 1356866404,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-261.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1359227779,
                        "poseId": 1359227779,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-196.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1366042543,
                        "poseId": 1366042543,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-378.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1369662877,
                        "poseId": 1369662877,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-281.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1387077267,
                        "poseId": 1387077267,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-126.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1403695068,
                        "poseId": 1403695068,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-241.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1421249760,
                        "poseId": 1421249760,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-121.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1427732989,
                        "poseId": 1427732989,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-101.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1435077390,
                        "poseId": 1435077390,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-266.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1435526815,
                        "poseId": 1435526815,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-011.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1442150578,
                        "poseId": 1442150578,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-248.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1443602301,
                        "poseId": 1443602301,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-398.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1446275434,
                        "poseId": 1446275434,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-496.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1460479412,
                        "poseId": 1460479412,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-296.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1462474757,
                        "poseId": 1462474757,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-413.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1464211287,
                        "poseId": 1464211287,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-161.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1465239348,
                        "poseId": 1465239348,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-358.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1495354731,
                        "poseId": 1495354731,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-366.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1503480066,
                        "poseId": 1503480066,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-386.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1504237440,
                        "poseId": 1504237440,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-391.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1510548993,
                        "poseId": 1510548993,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-068.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1518313617,
                        "poseId": 1518313617,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-306.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1522292422,
                        "poseId": 1522292422,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-066.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1537800433,
                        "poseId": 1537800433,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-328.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1571579883,
                        "poseId": 1571579883,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-271.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1574124391,
                        "poseId": 1574124391,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-341.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1587505243,
                        "poseId": 1587505243,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-343.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1589762758,
                        "poseId": 1589762758,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-093.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1589893539,
                        "poseId": 1589893539,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-273.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1590205486,
                        "poseId": 1590205486,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-051.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1593720689,
                        "poseId": 1593720689,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-113.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1595387468,
                        "poseId": 1595387468,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-031.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1617141458,
                        "poseId": 1617141458,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-348.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1617371722,
                        "poseId": 1617371722,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-058.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1618746376,
                        "poseId": 1618746376,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-096.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1627193675,
                        "poseId": 1627193675,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-288.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1632709771,
                        "poseId": 1632709771,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-111.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1672888849,
                        "poseId": 1672888849,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-283.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1680032357,
                        "poseId": 1680032357,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-516.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1682073163,
                        "poseId": 1682073163,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-263.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1694963656,
                        "poseId": 1694963656,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-298.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1696965740,
                        "poseId": 1696965740,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-206.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1734416704,
                        "poseId": 1734416704,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-471.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1745809690,
                        "poseId": 1745809690,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-191.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1747127685,
                        "poseId": 1747127685,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-456.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1749940298,
                        "poseId": 1749940298,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-271.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1753232893,
                        "poseId": 1753232893,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-296.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1766230864,
                        "poseId": 1766230864,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-201.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1767418320,
                        "poseId": 1767418320,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-438.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1770486816,
                        "poseId": 1770486816,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-163.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1812637412,
                        "poseId": 1812637412,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-431.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1815878387,
                        "poseId": 1815878387,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-453.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1823136396,
                        "poseId": 1823136396,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-418.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1831570795,
                        "poseId": 1831570795,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-278.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1835127600,
                        "poseId": 1835127600,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-106.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1836768746,
                        "poseId": 1836768746,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-261.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1840358876,
                        "poseId": 1840358876,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-386.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1841235083,
                        "poseId": 1841235083,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-471.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1844842420,
                        "poseId": 1844842420,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-421.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1858630565,
                        "poseId": 1858630565,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-276.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1859178917,
                        "poseId": 1859178917,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-181.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1864789076,
                        "poseId": 1864789076,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-083.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1870095954,
                        "poseId": 1870095954,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-426.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1881121899,
                        "poseId": 1881121899,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-118.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1891366068,
                        "poseId": 1891366068,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-063.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1905412562,
                        "poseId": 1905412562,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-311.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1907543122,
                        "poseId": 1907543122,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-073.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1918742246,
                        "poseId": 1918742246,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-071.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1923151902,
                        "poseId": 1923151902,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-216.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1930761877,
                        "poseId": 1930761877,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-356.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1931748863,
                        "poseId": 1931748863,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-153.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1933597127,
                        "poseId": 1933597127,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-318.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1939801356,
                        "poseId": 1939801356,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-008.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1943390741,
                        "poseId": 1943390741,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-511.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1952228121,
                        "poseId": 1952228121,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-121.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1973128364,
                        "poseId": 1973128364,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-231.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1983702377,
                        "poseId": 1983702377,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-463.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1984166537,
                        "poseId": 1984166537,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-043.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1997294693,
                        "poseId": 1997294693,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-173.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1997498986,
                        "poseId": 1997498986,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-276.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2007794984,
                        "poseId": 2007794984,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-086.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2010743178,
                        "poseId": 2010743178,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-346.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2013390616,
                        "poseId": 2013390616,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-241.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2025226929,
                        "poseId": 2025226929,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-316.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2040011669,
                        "poseId": 2040011669,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-301.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2043283929,
                        "poseId": 2043283929,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-168.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2049205408,
                        "poseId": 2049205408,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-486.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2056906835,
                        "poseId": 2056906835,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-336.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2059491942,
                        "poseId": 2059491942,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-031.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2062446572,
                        "poseId": 2062446572,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-076.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2064195157,
                        "poseId": 2064195157,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-338.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2064634592,
                        "poseId": 2064634592,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-323.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2085348346,
                        "poseId": 2085348346,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-531.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2086831881,
                        "poseId": 2086831881,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-436.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2089353132,
                        "poseId": 2089353132,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-321.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2104376086,
                        "poseId": 2104376086,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-351.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2105963782,
                        "poseId": 2105963782,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-123.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2106288438,
                        "poseId": 2106288438,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-411.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2107352859,
                        "poseId": 2107352859,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-246.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2112792737,
                        "poseId": 2112792737,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-331.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2113280994,
                        "poseId": 2113280994,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-301.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2114660713,
                        "poseId": 2114660713,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-2-086.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2118009515,
                        "poseId": 2118009515,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-368.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2118423280,
                        "poseId": 2118423280,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-1-226.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2125435385,
                        "poseId": 2125435385,
                        "path": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike/vid-3-293.jpg",
                        "intrinsicId": 3089079010,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"ImageDescription\": \"Lavc58.54.100\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3089079010,
                        "initialFocalLength": -1.0,
                        "focalLength": 77.25483399593904,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1080,
                        "height": 1920,
                        "sensorWidth": 36.0,
                        "sensorHeight": 20.25,
                        "serialNumber": "/home/ivan/Desktop/Faks/Diplomski/fotogrametrija/slike",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "05b1db100bb23ce63202ae64c244050451191164"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 296,
                "split": 15
            },
            "uids": {
                "0": "aca6860d7fbad1045ae932752cc7a5a61be08b36"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}