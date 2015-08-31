# Genoverse.Track.Model functions

## constructor
## init
## setDefaults
## setURL
## parseURL
## setLabelBuffer
## getData
## success
## error
## complete
## receiveData
## parseData

 parseData(data, start, end) - parse raw data from the data source (e.g. online web service)
 extract features and insert it into the internal features storage (RTree)

 data  - raw data from the data source (e.g. ajax response)
 start - start location of the data
 end   - end   location of the data

 every feature extracted this routine must construct a hash with at least 3 values:
  {
    id    : [unique feature id, string],
    start : [chromosomal start position, integer],
    end   : [chromosomal end position, integer],
    [other optional key/value pairs]
  }

 and call this.insertFeature(feature)

## setDataRange
## checkDataRange
## insertFeature
## findFeatures
## abort
## hashCode
