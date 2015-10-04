{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Schedule.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateSchedulePatch@.
module Network.Google.Resource.Coordinate.Schedule.Patch
    (
    -- * REST Resource
      SchedulePatchResource

    -- * Creating a Request
    , schedulePatch'
    , SchedulePatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spJobId
    , spAllDay
    , spStartTime
    , spSchedule
    , spUserIP
    , spTeamId
    , spKey
    , spEndTime
    , spOAuthToken
    , spDuration
    , spFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateSchedulePatch@ which the
-- 'SchedulePatch'' request conforms to.
type SchedulePatchResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           Capture "jobId" Word64 :>
             "schedule" :>
               QueryParam "allDay" Bool :>
                 QueryParam "duration" Word64 :>
                   QueryParam "endTime" Word64 :>
                     QueryParam "startTime" Word64 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Schedule :>
                                       Patch '[JSON] Schedule

-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
--
-- /See:/ 'schedulePatch'' smart constructor.
data SchedulePatch' = SchedulePatch'
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spJobId       :: !Word64
    , _spAllDay      :: !(Maybe Bool)
    , _spStartTime   :: !(Maybe Word64)
    , _spSchedule    :: !Schedule
    , _spUserIP      :: !(Maybe Text)
    , _spTeamId      :: !Text
    , _spKey         :: !(Maybe Key)
    , _spEndTime     :: !(Maybe Word64)
    , _spOAuthToken  :: !(Maybe OAuthToken)
    , _spDuration    :: !(Maybe Word64)
    , _spFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchedulePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spJobId'
--
-- * 'spAllDay'
--
-- * 'spStartTime'
--
-- * 'spSchedule'
--
-- * 'spUserIP'
--
-- * 'spTeamId'
--
-- * 'spKey'
--
-- * 'spEndTime'
--
-- * 'spOAuthToken'
--
-- * 'spDuration'
--
-- * 'spFields'
schedulePatch'
    :: Word64 -- ^ 'jobId'
    -> Schedule -- ^ 'Schedule'
    -> Text -- ^ 'teamId'
    -> SchedulePatch'
schedulePatch' pSpJobId_ pSpSchedule_ pSpTeamId_ =
    SchedulePatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spJobId = pSpJobId_
    , _spAllDay = Nothing
    , _spStartTime = Nothing
    , _spSchedule = pSpSchedule_
    , _spUserIP = Nothing
    , _spTeamId = pSpTeamId_
    , _spKey = Nothing
    , _spEndTime = Nothing
    , _spOAuthToken = Nothing
    , _spDuration = Nothing
    , _spFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' SchedulePatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' SchedulePatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | Job number
spJobId :: Lens' SchedulePatch' Word64
spJobId = lens _spJobId (\ s a -> s{_spJobId = a})

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
spAllDay :: Lens' SchedulePatch' (Maybe Bool)
spAllDay = lens _spAllDay (\ s a -> s{_spAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
spStartTime :: Lens' SchedulePatch' (Maybe Word64)
spStartTime
  = lens _spStartTime (\ s a -> s{_spStartTime = a})

-- | Multipart request metadata.
spSchedule :: Lens' SchedulePatch' Schedule
spSchedule
  = lens _spSchedule (\ s a -> s{_spSchedule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIP :: Lens' SchedulePatch' (Maybe Text)
spUserIP = lens _spUserIP (\ s a -> s{_spUserIP = a})

-- | Team ID
spTeamId :: Lens' SchedulePatch' Text
spTeamId = lens _spTeamId (\ s a -> s{_spTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SchedulePatch' (Maybe Key)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Scheduled end time in milliseconds since epoch.
spEndTime :: Lens' SchedulePatch' (Maybe Word64)
spEndTime
  = lens _spEndTime (\ s a -> s{_spEndTime = a})

-- | OAuth 2.0 token for the current user.
spOAuthToken :: Lens' SchedulePatch' (Maybe OAuthToken)
spOAuthToken
  = lens _spOAuthToken (\ s a -> s{_spOAuthToken = a})

-- | Job duration in milliseconds.
spDuration :: Lens' SchedulePatch' (Maybe Word64)
spDuration
  = lens _spDuration (\ s a -> s{_spDuration = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SchedulePatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

instance GoogleAuth SchedulePatch' where
        authKey = spKey . _Just
        authToken = spOAuthToken . _Just

instance GoogleRequest SchedulePatch' where
        type Rs SchedulePatch' = Schedule
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u SchedulePatch'{..}
          = go _spAllDay _spDuration _spEndTime _spStartTime
              _spTeamId
              _spJobId
              _spQuotaUser
              (Just _spPrettyPrint)
              _spUserIP
              _spFields
              _spKey
              _spOAuthToken
              (Just AltJSON)
              _spSchedule
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SchedulePatchResource)
                      r
                      u