#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { ICESCREEN } from "./workflows/icescreen"

//
// MAIN WORKFLOW
//
workflow {
    ICESCREEN()
}

workflow.onComplete {
    log.info(workflow.success ? "\nPipeline completed successfully!\n" : "Pipeline failed.")
}
