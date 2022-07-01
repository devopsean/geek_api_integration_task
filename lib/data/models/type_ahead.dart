class SearchTypeAhead {
  final List<Events>? events;
  final Meta? meta;

  SearchTypeAhead({
    this.events,
    this.meta,
  });

  SearchTypeAhead.fromJson(Map<String, dynamic> json)
      : events = (json['events'] as List?)
            ?.map((dynamic e) => Events.fromJson(e as Map<String, dynamic>))
            .toList(),
        meta = (json['meta'] as Map<String, dynamic>?) != null
            ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'events': events?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson()
      };
}

class Events {
  final String? type;
  final int? id;
  final String? datetimeUtc;
  final Venue? venue;
  final bool? datetimeTbd;
  final List<Performers>? performers;
  final bool? isOpen;
  final List<dynamic>? links;
  final String? datetimeLocal;
  final bool? timeTbd;
  final String? shortTitle;
  final String? visibleUntilUtc;
  final Stats? stats;
  final List<Taxonomies>? taxonomies;
  final String? url;
  final double? score;
  final String? announceDate;
  final String? createdAt;
  final bool? dateTbd;
  final String? title;
  final double? popularity;
  final String? description;
  final String? status;
  final AccessMethod? accessMethod;
  final EventPromotion? eventPromotion;
  final Announcements? announcements;
  final bool? conditional;
  final dynamic enddatetimeUtc;
  final List<dynamic>? themes;
  final List<dynamic>? domainInformation;

  Events({
    this.type,
    this.id,
    this.datetimeUtc,
    this.venue,
    this.datetimeTbd,
    this.performers,
    this.isOpen,
    this.links,
    this.datetimeLocal,
    this.timeTbd,
    this.shortTitle,
    this.visibleUntilUtc,
    this.stats,
    this.taxonomies,
    this.url,
    this.score,
    this.announceDate,
    this.createdAt,
    this.dateTbd,
    this.title,
    this.popularity,
    this.description,
    this.status,
    this.accessMethod,
    this.eventPromotion,
    this.announcements,
    this.conditional,
    this.enddatetimeUtc,
    this.themes,
    this.domainInformation,
  });

  Events.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        id = json['id'] as int?,
        datetimeUtc = json['datetime_utc'] as String?,
        venue = (json['venue'] as Map<String, dynamic>?) != null
            ? Venue.fromJson(json['venue'] as Map<String, dynamic>)
            : null,
        datetimeTbd = json['datetime_tbd'] as bool?,
        performers = (json['performers'] as List?)
            ?.map((dynamic e) => Performers.fromJson(e as Map<String, dynamic>))
            .toList(),
        isOpen = json['is_open'] as bool?,
        links = json['links'] as List?,
        datetimeLocal = json['datetime_local'] as String?,
        timeTbd = json['time_tbd'] as bool?,
        shortTitle = json['short_title'] as String?,
        visibleUntilUtc = json['visible_until_utc'] as String?,
        stats = (json['stats'] as Map<String, dynamic>?) != null
            ? Stats.fromJson(json['stats'] as Map<String, dynamic>)
            : null,
        taxonomies = (json['taxonomies'] as List?)
            ?.map((dynamic e) => Taxonomies.fromJson(e as Map<String, dynamic>))
            .toList(),
        url = json['url'] as String?,
        score = json['score'] as double?,
        announceDate = json['announce_date'] as String?,
        createdAt = json['created_at'] as String?,
        dateTbd = json['date_tbd'] as bool?,
        title = json['title'] as String?,
        popularity = json['popularity'] as double?,
        description = json['description'] as String?,
        status = json['status'] as String?,
        accessMethod = (json['access_method'] as Map<String, dynamic>?) != null
            ? AccessMethod.fromJson(
                json['access_method'] as Map<String, dynamic>)
            : null,
        eventPromotion =
            (json['event_promotion'] as Map<String, dynamic>?) != null
                ? EventPromotion.fromJson(
                    json['event_promotion'] as Map<String, dynamic>)
                : null,
        announcements = (json['announcements'] as Map<String, dynamic>?) != null
            ? Announcements.fromJson(
                json['announcements'] as Map<String, dynamic>)
            : null,
        conditional = json['conditional'] as bool?,
        enddatetimeUtc = json['enddatetime_utc'],
        themes = json['themes'] as List?,
        domainInformation = json['domain_information'] as List?;

  Map<String, dynamic> toJson() => {
        'type': type,
        'id': id,
        'datetime_utc': datetimeUtc,
        'venue': venue?.toJson(),
        'datetime_tbd': datetimeTbd,
        'performers': performers?.map((e) => e.toJson()).toList(),
        'is_open': isOpen,
        'links': links,
        'datetime_local': datetimeLocal,
        'time_tbd': timeTbd,
        'short_title': shortTitle,
        'visible_until_utc': visibleUntilUtc,
        'stats': stats?.toJson(),
        'taxonomies': taxonomies?.map((e) => e.toJson()).toList(),
        'url': url,
        'score': score,
        'announce_date': announceDate,
        'created_at': createdAt,
        'date_tbd': dateTbd,
        'title': title,
        'popularity': popularity,
        'description': description,
        'status': status,
        'access_method': accessMethod?.toJson(),
        'event_promotion': eventPromotion?.toJson(),
        'announcements': announcements?.toJson(),
        'conditional': conditional,
        'enddatetime_utc': enddatetimeUtc,
        'themes': themes,
        'domain_information': domainInformation
      };
}

class Venue {
  final String? state;
  final String? nameV2;
  final String? postalCode;
  final String? name;
  final List<dynamic>? links;
  final String? timezone;
  final String? url;
  final double? score;
  final Location? location;
  final String? address;
  final String? country;
  final bool? hasUpcomingEvents;
  final int? numUpcomingEvents;
  final String? city;
  final String? slug;
  final String? extendedAddress;
  final int? id;
  final int? popularity;
  final AccessMethod? accessMethod;
  final int? metroCode;
  final int? capacity;
  final String? displayLocation;

  Venue({
    this.state,
    this.nameV2,
    this.postalCode,
    this.name,
    this.links,
    this.timezone,
    this.url,
    this.score,
    this.location,
    this.address,
    this.country,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.city,
    this.slug,
    this.extendedAddress,
    this.id,
    this.popularity,
    this.accessMethod,
    this.metroCode,
    this.capacity,
    this.displayLocation,
  });

  Venue.fromJson(Map<String, dynamic> json)
      : state = json['state'] as String?,
        nameV2 = json['name_v2'] as String?,
        postalCode = json['postal_code'] as String?,
        name = json['name'] as String?,
        links = json['links'] as List?,
        timezone = json['timezone'] as String?,
        url = json['url'] as String?,
        score = json['score'] as double?,
        location = (json['location'] as Map<String, dynamic>?) != null
            ? Location.fromJson(json['location'] as Map<String, dynamic>)
            : null,
        address = json['address'] as String?,
        country = json['country'] as String?,
        hasUpcomingEvents = json['has_upcoming_events'] as bool?,
        numUpcomingEvents = json['num_upcoming_events'] as int?,
        city = json['city'] as String?,
        slug = json['slug'] as String?,
        extendedAddress = json['extended_address'] as String?,
        id = json['id'] as int?,
        popularity = json['popularity'] as int?,
        accessMethod = (json['access_method'] as Map<String, dynamic>?) != null
            ? AccessMethod.fromJson(
                json['access_method'] as Map<String, dynamic>)
            : null,
        metroCode = json['metro_code'] as int?,
        capacity = json['capacity'] as int?,
        displayLocation = json['display_location'] as String?;

  Map<String, dynamic> toJson() => {
        'state': state,
        'name_v2': nameV2,
        'postal_code': postalCode,
        'name': name,
        'links': links,
        'timezone': timezone,
        'url': url,
        'score': score,
        'location': location?.toJson(),
        'address': address,
        'country': country,
        'has_upcoming_events': hasUpcomingEvents,
        'num_upcoming_events': numUpcomingEvents,
        'city': city,
        'slug': slug,
        'extended_address': extendedAddress,
        'id': id,
        'popularity': popularity,
        'access_method': accessMethod?.toJson(),
        'metro_code': metroCode,
        'capacity': capacity,
        'display_location': displayLocation
      };
}

class Location {
  final double? lat;
  final double? lon;

  Location({
    this.lat,
    this.lon,
  });

  Location.fromJson(Map<String, dynamic> json)
      : lat = json['lat'] as double?,
        lon = json['lon'] as double?;

  Map<String, dynamic> toJson() => {'lat': lat, 'lon': lon};
}

class AccessMethod {
  final String? method;
  final String? createdAt;
  final bool? employeeOnly;

  AccessMethod({
    this.method,
    this.createdAt,
    this.employeeOnly,
  });

  AccessMethod.fromJson(Map<String, dynamic> json)
      : method = json['method'] as String?,
        createdAt = json['created_at'] as String?,
        employeeOnly = json['employee_only'] as bool?;

  Map<String, dynamic> toJson() => {
        'method': method,
        'created_at': createdAt,
        'employee_only': employeeOnly
      };
}

class Performers {
  final String? type;
  final String? name;
  final String? image;
  final int? id;
  final Images? images;
  final List<Divisions>? divisions;
  final bool? hasUpcomingEvents;
  final bool? primary;
  final Stats? stats;
  final List<Taxonomies>? taxonomies;
  final String? imageAttribution;
  final String? url;
  final double? score;
  final String? slug;
  final int? homeVenueId;
  final String? shortName;
  final int? numUpcomingEvents;
  final Colors? colors;
  final String? imageLicense;
  final int? popularity;
  final bool? homeTeam;
  final Location? location;
  final String? imageRightsMessage;

  Performers({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.popularity,
    this.homeTeam,
    this.location,
    this.imageRightsMessage,
  });

  Performers.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        name = json['name'] as String?,
        image = json['image'] as String?,
        id = json['id'] as int?,
        images = (json['images'] as Map<String, dynamic>?) != null
            ? Images.fromJson(json['images'] as Map<String, dynamic>)
            : null,
        divisions = (json['divisions'] as List?)
            ?.map((dynamic e) => Divisions.fromJson(e as Map<String, dynamic>))
            .toList(),
        hasUpcomingEvents = json['has_upcoming_events'] as bool?,
        primary = json['primary'] as bool?,
        stats = (json['stats'] as Map<String, dynamic>?) != null
            ? Stats.fromJson(json['stats'] as Map<String, dynamic>)
            : null,
        taxonomies = (json['taxonomies'] as List?)
            ?.map((dynamic e) => Taxonomies.fromJson(e as Map<String, dynamic>))
            .toList(),
        imageAttribution = json['image_attribution'] as String?,
        url = json['url'] as String?,
        score = json['score'] as double?,
        slug = json['slug'] as String?,
        homeVenueId = json['home_venue_id'] as int?,
        shortName = json['short_name'] as String?,
        numUpcomingEvents = json['num_upcoming_events'] as int?,
        colors = (json['colors'] as Map<String, dynamic>?) != null
            ? Colors.fromJson(json['colors'] as Map<String, dynamic>)
            : null,
        imageLicense = json['image_license'] as String?,
        popularity = json['popularity'] as int?,
        homeTeam = json['home_team'] as bool?,
        location = (json['location'] as Map<String, dynamic>?) != null
            ? Location.fromJson(json['location'] as Map<String, dynamic>)
            : null,
        imageRightsMessage = json['image_rights_message'] as String?;

  Map<String, dynamic> toJson() => {
        'type': type,
        'name': name,
        'image': image,
        'id': id,
        'images': images?.toJson(),
        'divisions': divisions?.map((e) => e.toJson()).toList(),
        'has_upcoming_events': hasUpcomingEvents,
        'primary': primary,
        'stats': stats?.toJson(),
        'taxonomies': taxonomies?.map((e) => e.toJson()).toList(),
        'image_attribution': imageAttribution,
        'url': url,
        'score': score,
        'slug': slug,
        'home_venue_id': homeVenueId,
        'short_name': shortName,
        'num_upcoming_events': numUpcomingEvents,
        'colors': colors?.toJson(),
        'image_license': imageLicense,
        'popularity': popularity,
        'home_team': homeTeam,
        'location': location?.toJson(),
        'image_rights_message': imageRightsMessage
      };
}

class Images {
  final String? huge;

  Images({
    this.huge,
  });

  Images.fromJson(Map<String, dynamic> json) : huge = json['huge'] as String?;

  Map<String, dynamic> toJson() => {'huge': huge};
}

class Divisions {
  final int? taxonomyId;
  final dynamic shortName;
  final String? displayName;
  final String? displayType;
  final int? divisionLevel;
  final dynamic slug;

  Divisions({
    this.taxonomyId,
    this.shortName,
    this.displayName,
    this.displayType,
    this.divisionLevel,
    this.slug,
  });

  Divisions.fromJson(Map<String, dynamic> json)
      : taxonomyId = json['taxonomy_id'] as int?,
        shortName = json['short_name'],
        displayName = json['display_name'] as String?,
        displayType = json['display_type'] as String?,
        divisionLevel = json['division_level'] as int?,
        slug = json['slug'];

  Map<String, dynamic> toJson() => {
        'taxonomy_id': taxonomyId,
        'short_name': shortName,
        'display_name': displayName,
        'display_type': displayType,
        'division_level': divisionLevel,
        'slug': slug
      };
}

class PerformerStats {
  final int? eventCount;

  PerformerStats({
    this.eventCount,
  });

  PerformerStats.fromJson(Map<String, dynamic> json)
      : eventCount = json['event_count'] as int?;

  Map<String, dynamic> toJson() => {'event_count': eventCount};
}

class Taxonomies {
  final int? id;
  final String? name;
  final dynamic parentId;
  final DocumentSource? documentSource;
  final int? rank;

  Taxonomies({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.rank,
  });

  Taxonomies.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        parentId = json['parent_id'],
        documentSource =
            (json['document_source'] as Map<String, dynamic>?) != null
                ? DocumentSource.fromJson(
                    json['document_source'] as Map<String, dynamic>)
                : null,
        rank = json['rank'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'parent_id': parentId,
        'document_source': documentSource?.toJson(),
        'rank': rank
      };
}

class DocumentSource {
  final String? sourceType;
  final String? generationType;

  DocumentSource({
    this.sourceType,
    this.generationType,
  });

  DocumentSource.fromJson(Map<String, dynamic> json)
      : sourceType = json['source_type'] as String?,
        generationType = json['generation_type'] as String?;

  Map<String, dynamic> toJson() =>
      {'source_type': sourceType, 'generation_type': generationType};
}

class Colors {
  final List<String>? all;
  final String? iconic;
  final List<String>? primary;

  Colors({
    this.all,
    this.iconic,
    this.primary,
  });

  Colors.fromJson(Map<String, dynamic> json)
      : all = (json['all'] as List?)?.map((dynamic e) => e as String).toList(),
        iconic = json['iconic'] as String?,
        primary = (json['primary'] as List?)
            ?.map((dynamic e) => e as String)
            .toList();

  Map<String, dynamic> toJson() =>
      {'all': all, 'iconic': iconic, 'primary': primary};
}

class Stats {
  final int? listingCount;
  final int? averagePrice;
  final int? lowestPriceGoodDeals;
  final int? lowestPrice;
  final int? highestPrice;
  final int? visibleListingCount;
  final List<int>? dqBucketCounts;
  final int? medianPrice;
  final int? lowestSgBasePrice;
  final int? lowestSgBasePriceGoodDeals;

  Stats({
    this.listingCount,
    this.averagePrice,
    this.lowestPriceGoodDeals,
    this.lowestPrice,
    this.highestPrice,
    this.visibleListingCount,
    this.dqBucketCounts,
    this.medianPrice,
    this.lowestSgBasePrice,
    this.lowestSgBasePriceGoodDeals,
  });

  Stats.fromJson(Map<String, dynamic> json)
      : listingCount = json['listing_count'] as int?,
        averagePrice = json['average_price'] as int?,
        lowestPriceGoodDeals = json['lowest_price_good_deals'] as int?,
        lowestPrice = json['lowest_price'] as int?,
        highestPrice = json['highest_price'] as int?,
        visibleListingCount = json['visible_listing_count'] as int?,
        dqBucketCounts = (json['dq_bucket_counts'] as List?)
            ?.map((dynamic e) => e as int)
            .toList(),
        medianPrice = json['median_price'] as int?,
        lowestSgBasePrice = json['lowest_sg_base_price'] as int?,
        lowestSgBasePriceGoodDeals =
            json['lowest_sg_base_price_good_deals'] as int?;

  Map<String, dynamic> toJson() => {
        'listing_count': listingCount,
        'average_price': averagePrice,
        'lowest_price_good_deals': lowestPriceGoodDeals,
        'lowest_price': lowestPrice,
        'highest_price': highestPrice,
        'visible_listing_count': visibleListingCount,
        'dq_bucket_counts': dqBucketCounts,
        'median_price': medianPrice,
        'lowest_sg_base_price': lowestSgBasePrice,
        'lowest_sg_base_price_good_deals': lowestSgBasePriceGoodDeals
      };
}

class EventPromotion {
  final String? headline;
  final String? additionalInfo;
  final Images? images;

  EventPromotion({
    this.headline,
    this.additionalInfo,
    this.images,
  });

  EventPromotion.fromJson(Map<String, dynamic> json)
      : headline = json['headline'] as String?,
        additionalInfo = json['additional_info'] as String?,
        images = (json['images'] as Map<String, dynamic>?) != null
            ? Images.fromJson(json['images'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'headline': headline,
        'additional_info': additionalInfo,
        'images': images?.toJson()
      };
}

class EventImages {
  final String? icon;
  final String? png2x;
  final String? png3x;

  EventImages({
    this.icon,
    this.png2x,
    this.png3x,
  });

  EventImages.fromJson(Map<String, dynamic> json)
      : icon = json['icon'] as String?,
        png2x = json['png@2x'] as String?,
        png3x = json['png@3x'] as String?;

  Map<String, dynamic> toJson() =>
      {'icon': icon, 'png@2x': png2x, 'png@3x': png3x};
}

class Announcements {
  final CheckoutDisclosures? checkoutDisclosures;

  Announcements({
    this.checkoutDisclosures,
  });

  Announcements.fromJson(Map<String, dynamic> json)
      : checkoutDisclosures =
            (json['checkout_disclosures'] as Map<String, dynamic>?) != null
                ? CheckoutDisclosures.fromJson(
                    json['checkout_disclosures'] as Map<String, dynamic>)
                : null;

  Map<String, dynamic> toJson() =>
      {'checkout_disclosures': checkoutDisclosures?.toJson()};
}

class CheckoutDisclosures {
  final List<Messages>? messages;

  CheckoutDisclosures({
    this.messages,
  });

  CheckoutDisclosures.fromJson(Map<String, dynamic> json)
      : messages = (json['messages'] as List?)
            ?.map((dynamic e) => Messages.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'messages': messages?.map((e) => e.toJson()).toList()};
}

class Messages {
  final String? text;

  Messages({
    this.text,
  });

  Messages.fromJson(Map<String, dynamic> json) : text = json['text'] as String?;

  Map<String, dynamic> toJson() => {'text': text};
}

class Meta {
  final int? total;
  final int? took;
  final int? page;
  final int? perPage;
  final dynamic geolocation;

  Meta({
    this.total,
    this.took,
    this.page,
    this.perPage,
    this.geolocation,
  });

  Meta.fromJson(Map<String, dynamic> json)
      : total = json['total'] as int?,
        took = json['took'] as int?,
        page = json['page'] as int?,
        perPage = json['per_page'] as int?,
        geolocation = json['geolocation'];

  Map<String, dynamic> toJson() => {
        'total': total,
        'took': took,
        'page': page,
        'per_page': perPage,
        'geolocation': geolocation
      };
}
